
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UnityBegin (char*) ;
 int UnityEnd () ;
 char* progname ;
 int suite_setup () ;

int main(int argc, char *argv[])
{
  progname = argv[0];
  suite_setup();
  UnityBegin("networking.c");

  return (UnityEnd());
}
