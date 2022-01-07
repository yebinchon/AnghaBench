
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RUN_TEST (int ,int) ;
 int UnityBegin (char*) ;
 int UnityEnd () ;
 char* progname ;
 int suite_setup () ;
 int test_MakeCMac ;
 int test_MakeMd5Mac ;
 int test_MakeSHA1Mac ;
 int test_PacketSizeNotMultipleOfFourBytes ;
 int test_VerifyCMAC ;
 int test_VerifyCorrectMD5 ;
 int test_VerifyFailure ;
 int test_VerifySHA1 ;

int main(int argc, char *argv[])
{
  progname = argv[0];
  suite_setup();
  UnityBegin("crypto.c");
  RUN_TEST(test_MakeMd5Mac, 15);
  RUN_TEST(test_MakeSHA1Mac, 16);
  RUN_TEST(test_MakeCMac, 17);
  RUN_TEST(test_VerifyCorrectMD5, 18);
  RUN_TEST(test_VerifySHA1, 19);
  RUN_TEST(test_VerifyCMAC, 20);
  RUN_TEST(test_VerifyFailure, 21);
  RUN_TEST(test_PacketSizeNotMultipleOfFourBytes, 22);

  return (UnityEnd());
}
