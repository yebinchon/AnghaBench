
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RUN_TEST (int ,int) ;
 int UnityBegin (char*) ;
 int UnityEnd () ;
 char* progname ;
 int suite_setup () ;
 int test_IPv4Address ;
 int test_IPv6Address ;
 int test_LfpOutputBinaryFormat ;
 int test_LfpOutputDecimalFormat ;
 int test_PktOutput ;
 int test_SetLiVnMode1 ;
 int test_SetLiVnMode2 ;

int main(int argc, char *argv[])
{
  progname = argv[0];
  suite_setup();
  UnityBegin("utilities.c");
  RUN_TEST(test_IPv4Address, 16);
  RUN_TEST(test_IPv6Address, 17);
  RUN_TEST(test_SetLiVnMode1, 18);
  RUN_TEST(test_SetLiVnMode2, 19);
  RUN_TEST(test_PktOutput, 20);
  RUN_TEST(test_LfpOutputBinaryFormat, 21);
  RUN_TEST(test_LfpOutputDecimalFormat, 22);

  return (UnityEnd());
}
