
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int another (int*,char***,char*) ;
 int code ;
 int command (char*,char*,char*) ;
 int printf (char*,char*) ;

void
do_chmod(int argc, char **argv)
{

 if (argc < 2 && !another(&argc, &argv, "mode"))
  goto usage;
 if (argc < 3 && !another(&argc, &argv, "file-name")) {
usage:
  printf("usage: %s mode file-name\n", argv[0]);
  code = -1;
  return;
 }
 command("SITE CHMOD %s %s", argv[1], argv[2]);
}
