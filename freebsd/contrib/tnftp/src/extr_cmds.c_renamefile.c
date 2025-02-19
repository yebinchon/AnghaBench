
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COMPLETE ;
 scalar_t__ CONTINUE ;
 int UPRINTF (char*,char*) ;
 int another (int*,char***,char*) ;
 int code ;
 scalar_t__ command (char*,char*) ;
 int dirchange ;

void
renamefile(int argc, char *argv[])
{

 if (argc == 0 || (argc == 1 && !another(&argc, &argv, "from-name")))
  goto usage;
 if ((argc < 3 && !another(&argc, &argv, "to-name")) || argc > 3) {
 usage:
  UPRINTF("usage: %s from-name to-name\n", argv[0]);
  code = -1;
  return;
 }
 if (command("RNFR %s", argv[1]) == CONTINUE &&
     command("RNTO %s", argv[2]) == COMPLETE)
  dirchange = 1;
}
