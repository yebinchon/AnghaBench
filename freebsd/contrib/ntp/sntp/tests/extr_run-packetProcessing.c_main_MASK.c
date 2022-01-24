#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 () ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  test_AcceptNoSentPacketBroadcastMode ; 
 int /*<<< orphan*/  test_AuthenticatedPacketInvalid ; 
 int /*<<< orphan*/  test_AuthenticatedPacketUnknownKey ; 
 int /*<<< orphan*/  test_CorrectAuthenticatedPacketCMAC ; 
 int /*<<< orphan*/  test_CorrectAuthenticatedPacketMD5 ; 
 int /*<<< orphan*/  test_CorrectAuthenticatedPacketSHA1 ; 
 int /*<<< orphan*/  test_CorrectUnauthenticatedPacket ; 
 int /*<<< orphan*/  test_CryptoNAKPacketReject ; 
 int /*<<< orphan*/  test_KoDDeny ; 
 int /*<<< orphan*/  test_KoDRate ; 
 int /*<<< orphan*/  test_LengthNotMultipleOfFour ; 
 int /*<<< orphan*/  test_NonWantedMode ; 
 int /*<<< orphan*/  test_RejectUnsyncedServer ; 
 int /*<<< orphan*/  test_RejectWrongResponseServerMode ; 
 int /*<<< orphan*/  test_ServerVersionTooNew ; 
 int /*<<< orphan*/  test_ServerVersionTooOld ; 
 int /*<<< orphan*/  test_TooShortExtensionFieldLength ; 
 int /*<<< orphan*/  test_TooShortLength ; 
 int /*<<< orphan*/  test_UnauthenticatedPacketReject ; 

int FUNC4(int argc, char *argv[])
{
  progname = argv[0];
  FUNC3();
  FUNC1("packetProcessing.c");
  FUNC0(test_TooShortLength, 23);
  FUNC0(test_LengthNotMultipleOfFour, 24);
  FUNC0(test_TooShortExtensionFieldLength, 25);
  FUNC0(test_UnauthenticatedPacketReject, 26);
  FUNC0(test_CryptoNAKPacketReject, 27);
  FUNC0(test_AuthenticatedPacketInvalid, 28);
  FUNC0(test_AuthenticatedPacketUnknownKey, 29);
  FUNC0(test_ServerVersionTooOld, 30);
  FUNC0(test_ServerVersionTooNew, 31);
  FUNC0(test_NonWantedMode, 32);
  FUNC0(test_KoDRate, 33);
  FUNC0(test_KoDDeny, 34);
  FUNC0(test_RejectUnsyncedServer, 35);
  FUNC0(test_RejectWrongResponseServerMode, 36);
  FUNC0(test_AcceptNoSentPacketBroadcastMode, 37);
  FUNC0(test_CorrectUnauthenticatedPacket, 38);
  FUNC0(test_CorrectAuthenticatedPacketMD5, 39);
  FUNC0(test_CorrectAuthenticatedPacketSHA1, 40);
  FUNC0(test_CorrectAuthenticatedPacketCMAC, 41);

  return (FUNC2());
}