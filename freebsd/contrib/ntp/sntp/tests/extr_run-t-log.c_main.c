
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RUN_TEST (int ,int) ;
 int UnityBegin (char*) ;
 int UnityEnd () ;
 char* progname ;
 int suite_setup () ;
 int testChangePrognameInMysyslog ;
 int testOpenLogfileTest ;
 int testWriteInCustomLogfile ;

int main(int argc, char *argv[])
{
  progname = argv[0];
  suite_setup();
  UnityBegin("t-log.c");
  RUN_TEST(testChangePrognameInMysyslog, 10);
  RUN_TEST(testOpenLogfileTest, 11);
  RUN_TEST(testWriteInCustomLogfile, 12);

  return (UnityEnd());
}
