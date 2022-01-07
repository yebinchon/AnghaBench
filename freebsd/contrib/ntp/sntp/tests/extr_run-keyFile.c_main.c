
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RUN_TEST (int ,int) ;
 int UnityBegin (char*) ;
 int UnityEnd () ;
 char* progname ;
 int suite_setup () ;
 int test_ReadASCIIKeys ;
 int test_ReadEmptyKeyFile ;
 int test_ReadHexKeys ;
 int test_ReadKeyFileWithComments ;
 int test_ReadKeyFileWithInvalidHex ;

int main(int argc, char *argv[])
{
  progname = argv[0];
  suite_setup();
  UnityBegin("keyFile.c");
  RUN_TEST(test_ReadEmptyKeyFile, 12);
  RUN_TEST(test_ReadASCIIKeys, 13);
  RUN_TEST(test_ReadHexKeys, 14);
  RUN_TEST(test_ReadKeyFileWithComments, 15);
  RUN_TEST(test_ReadKeyFileWithInvalidHex, 16);

  return (UnityEnd());
}
