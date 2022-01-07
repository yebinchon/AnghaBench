
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TYPE_I ;
 int another (int*,char***,char*) ;
 int code ;
 scalar_t__ curtype ;
 char* domap (char*) ;
 char* dotrans (char*) ;
 int globulize (char**) ;
 scalar_t__ mapflag ;
 scalar_t__ ntflag ;
 int printf (char*,char*) ;
 int sendrequest (char*,char*,char*,char*,int) ;
 scalar_t__ sunique ;

void
put(int argc, char **argv)
{
 char *cmd;
 int loc = 0;
 char *oldargv1, *oldargv2;

 if (argc == 2) {
  argc++;
  argv[2] = argv[1];
  loc++;
 }
 if (argc < 2 && !another(&argc, &argv, "local-file"))
  goto usage;
 if (argc < 3 && !another(&argc, &argv, "remote-file")) {
usage:
  printf("usage: %s local-file remote-file\n", argv[0]);
  code = -1;
  return;
 }
 oldargv1 = argv[1];
 oldargv2 = argv[2];
 if (!globulize(&argv[1])) {
  code = -1;
  return;
 }




 if (argv[1] != oldargv1 && argv[2] == oldargv1) {
  argv[2] = argv[1];
 }
 cmd = (argv[0][0] == 'a') ? "APPE" : ((sunique) ? "STOU" : "STOR");
 if (loc && ntflag) {
  argv[2] = dotrans(argv[2]);
 }
 if (loc && mapflag) {
  argv[2] = domap(argv[2]);
 }
 sendrequest(cmd, argv[1], argv[2],
      curtype == TYPE_I ? "rb" : "r",
      argv[1] != oldargv1 || argv[2] != oldargv2);
}
