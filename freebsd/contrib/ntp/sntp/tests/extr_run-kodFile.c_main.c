
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RUN_TEST (int ,int) ;
 int UnityBegin (char*) ;
 int UnityEnd () ;
 char* progname ;
 int suite_setup () ;
 int test_ReadCorrectFile ;
 int test_ReadEmptyFile ;
 int test_ReadFileWithBlankLines ;
 int test_WriteEmptyFile ;
 int test_WriteFileWithMultipleEntries ;
 int test_WriteFileWithSingleEntry ;

int main(int argc, char *argv[])
{
  progname = argv[0];
  suite_setup();
  UnityBegin("kodFile.c");
  RUN_TEST(test_ReadEmptyFile, 19);
  RUN_TEST(test_ReadCorrectFile, 20);
  RUN_TEST(test_ReadFileWithBlankLines, 21);
  RUN_TEST(test_WriteEmptyFile, 22);
  RUN_TEST(test_WriteFileWithSingleEntry, 23);
  RUN_TEST(test_WriteFileWithMultipleEntries, 24);

  return (UnityEnd());
}
