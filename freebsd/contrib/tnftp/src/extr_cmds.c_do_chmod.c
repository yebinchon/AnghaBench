
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UPRINTF (char*,char*) ;
 int another (int*,char***,char*) ;
 int code ;
 int command (char*,char*,char*) ;

void
do_chmod(int argc, char *argv[])
{

 if (argc == 0 || (argc == 1 && !another(&argc, &argv, "mode")))
  goto usage;
 if ((argc < 3 && !another(&argc, &argv, "remote-file")) || argc > 3) {
 usage:
  UPRINTF("usage: %s mode remote-file\n", argv[0]);
  code = -1;
  return;
 }
 (void)command("SITE CHMOD %s %s", argv[1], argv[2]);
}
