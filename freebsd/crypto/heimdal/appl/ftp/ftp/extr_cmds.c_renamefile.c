
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CONTINUE ;
 int another (int*,char***,char*) ;
 int code ;
 scalar_t__ command (char*,char*) ;
 int printf (char*,char*) ;

void
renamefile(int argc, char **argv)
{

 if (argc < 2 && !another(&argc, &argv, "from-name"))
  goto usage;
 if (argc < 3 && !another(&argc, &argv, "to-name")) {
usage:
  printf("%s from-name to-name\n", argv[0]);
  code = -1;
  return;
 }
 if (command("RNFR %s", argv[1]) == CONTINUE)
  command("RNTO %s", argv[2]);
}
