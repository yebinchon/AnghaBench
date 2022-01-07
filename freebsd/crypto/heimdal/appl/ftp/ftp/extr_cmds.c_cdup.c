
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERROR ;
 int code ;
 scalar_t__ command (char*) ;
 int printf (char*) ;
 scalar_t__ verbose ;

void
cdup(int argc, char **argv)
{

 if (command("CDUP") == ERROR && code == 500) {
  if (verbose)
   printf("CDUP command not recognized, trying XCUP\n");
  command("XCUP");
 }
}
