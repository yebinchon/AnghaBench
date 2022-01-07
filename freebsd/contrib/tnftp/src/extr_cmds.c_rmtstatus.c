
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMMAND_1ARG (int,char**,char*) ;
 int UPRINTF (char*,char*) ;
 int code ;

void
rmtstatus(int argc, char *argv[])
{

 if (argc == 0) {
  UPRINTF("usage: %s [remote-file]\n", argv[0]);
  code = -1;
  return;
 }
 COMMAND_1ARG(argc, argv, "STAT");
}
