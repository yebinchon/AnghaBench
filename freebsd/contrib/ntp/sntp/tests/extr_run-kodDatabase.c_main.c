
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RUN_TEST (int ,int) ;
 int UnityBegin (char*) ;
 int UnityEnd () ;
 char* progname ;
 int suite_setup () ;
 int test_AddDuplicate ;
 int test_DeleteEntry ;
 int test_MultipleEntryHandling ;
 int test_NoMatchInSearch ;
 int test_SingleEntryHandling ;

int main(int argc, char *argv[])
{
  progname = argv[0];
  suite_setup();
  UnityBegin("kodDatabase.c");
  RUN_TEST(test_SingleEntryHandling, 14);
  RUN_TEST(test_MultipleEntryHandling, 15);
  RUN_TEST(test_NoMatchInSearch, 16);
  RUN_TEST(test_AddDuplicate, 17);
  RUN_TEST(test_DeleteEntry, 18);

  return (UnityEnd());
}
