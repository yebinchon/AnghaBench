
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RUN_TEST (int ,int) ;
 int UnityBegin (char*) ;
 int UnityEnd () ;
 char* progname ;
 int suite_setup () ;
 int test_AcceptNoSentPacketBroadcastMode ;
 int test_AuthenticatedPacketInvalid ;
 int test_AuthenticatedPacketUnknownKey ;
 int test_CorrectAuthenticatedPacketCMAC ;
 int test_CorrectAuthenticatedPacketMD5 ;
 int test_CorrectAuthenticatedPacketSHA1 ;
 int test_CorrectUnauthenticatedPacket ;
 int test_CryptoNAKPacketReject ;
 int test_KoDDeny ;
 int test_KoDRate ;
 int test_LengthNotMultipleOfFour ;
 int test_NonWantedMode ;
 int test_RejectUnsyncedServer ;
 int test_RejectWrongResponseServerMode ;
 int test_ServerVersionTooNew ;
 int test_ServerVersionTooOld ;
 int test_TooShortExtensionFieldLength ;
 int test_TooShortLength ;
 int test_UnauthenticatedPacketReject ;

int main(int argc, char *argv[])
{
  progname = argv[0];
  suite_setup();
  UnityBegin("packetProcessing.c");
  RUN_TEST(test_TooShortLength, 23);
  RUN_TEST(test_LengthNotMultipleOfFour, 24);
  RUN_TEST(test_TooShortExtensionFieldLength, 25);
  RUN_TEST(test_UnauthenticatedPacketReject, 26);
  RUN_TEST(test_CryptoNAKPacketReject, 27);
  RUN_TEST(test_AuthenticatedPacketInvalid, 28);
  RUN_TEST(test_AuthenticatedPacketUnknownKey, 29);
  RUN_TEST(test_ServerVersionTooOld, 30);
  RUN_TEST(test_ServerVersionTooNew, 31);
  RUN_TEST(test_NonWantedMode, 32);
  RUN_TEST(test_KoDRate, 33);
  RUN_TEST(test_KoDDeny, 34);
  RUN_TEST(test_RejectUnsyncedServer, 35);
  RUN_TEST(test_RejectWrongResponseServerMode, 36);
  RUN_TEST(test_AcceptNoSentPacketBroadcastMode, 37);
  RUN_TEST(test_CorrectUnauthenticatedPacket, 38);
  RUN_TEST(test_CorrectAuthenticatedPacketMD5, 39);
  RUN_TEST(test_CorrectAuthenticatedPacketSHA1, 40);
  RUN_TEST(test_CorrectAuthenticatedPacketCMAC, 41);

  return (UnityEnd());
}
