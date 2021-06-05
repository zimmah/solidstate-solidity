// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import './OwnableStorage.sol';

abstract contract OwnableInternal {
  using OwnableStorage for OwnableStorage.Layout;

  function owner () virtual public view returns (address) {
    return OwnableStorage.layout().owner;
  }

  modifier onlyOwner {
    require(
      msg.sender == OwnableStorage.layout().owner,
      'Ownable: sender must be owner'
    );
    _;
  }
}
