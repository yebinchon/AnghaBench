
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERROR ;
 int another (int*,char***,char*) ;
 int code ;
 scalar_t__ command (char*,char*) ;
 int printf (char*,...) ;
 scalar_t__ verbose ;

void
makedir(int argc, char **argv)
{

 if (argc < 2 && !another(&argc, &argv, "directory-name")) {
  printf("usage: %s directory-name\n", argv[0]);
  code = -1;
  return;
 }
 if (command("MKD %s", argv[1]) == ERROR && code == 500) {
  if (verbose)
   printf("MKD command not recognized, trying XMKD\n");
  command("XMKD %s", argv[1]);
 }
}
