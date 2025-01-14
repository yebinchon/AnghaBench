
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMMAND_1ARG (int,char**,char*) ;
 int UPRINTF (char*,char*) ;
 int code ;
 int verbose ;

void
idlecmd(int argc, char *argv[])
{
 int oldverbose = verbose;

 if (argc < 1 || argc > 2) {
  UPRINTF("usage: %s [seconds]\n", argv[0]);
  code = -1;
  return;
 }
 verbose = 1;
 COMMAND_1ARG(argc, argv, "SITE IDLE");
 verbose = oldverbose;
}
