
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RUN_TEST (int ,int) ;
 int UnityBegin (char*) ;
 int UnityEnd () ;
 char* progname ;
 int suite_setup () ;
 int test_GenerateAuthenticatedPacket ;
 int test_GenerateUnauthenticatedPacket ;
 int test_HandleCorrectPacket ;
 int test_HandleKodDemobilize ;
 int test_HandleKodRate ;
 int test_HandleServerAuthenticationFailure ;
 int test_HandleUnusablePacket ;
 int test_HandleUnusableServer ;
 int test_OffsetCalculationNegativeOffset ;
 int test_OffsetCalculationPositiveOffset ;

int main(int argc, char *argv[])
{
  progname = argv[0];
  suite_setup();
  UnityBegin("packetHandling.c");
  RUN_TEST(test_GenerateUnauthenticatedPacket, 17);
  RUN_TEST(test_GenerateAuthenticatedPacket, 18);
  RUN_TEST(test_OffsetCalculationPositiveOffset, 19);
  RUN_TEST(test_OffsetCalculationNegativeOffset, 20);
  RUN_TEST(test_HandleUnusableServer, 21);
  RUN_TEST(test_HandleUnusablePacket, 22);
  RUN_TEST(test_HandleServerAuthenticationFailure, 23);
  RUN_TEST(test_HandleKodDemobilize, 24);
  RUN_TEST(test_HandleKodRate, 25);
  RUN_TEST(test_HandleCorrectPacket, 26);

  return (UnityEnd());
}
