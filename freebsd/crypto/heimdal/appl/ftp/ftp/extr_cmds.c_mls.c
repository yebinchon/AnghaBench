
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sighand ;


 int SIGINT ;
 int another (int*,char***,char*) ;
 int code ;
 scalar_t__ confirm (char*,char*) ;
 scalar_t__ fromatty ;
 int globulize (char**) ;
 int interactive ;
 int jabort ;
 int mabort ;
 int mflag ;
 char* mname ;
 int printf (char*,char*) ;
 int recvrequest (char*,char*,char*,char*,int ,int) ;
 int setjmp (int ) ;
 int signal (int ,int ) ;
 scalar_t__ strcmp (char*,char*) ;

void
mls(int argc, char **argv)
{
 sighand oldintr;
 int ointer, i;
 char *cmd, filemode[2], *dest;

 if (argc < 2 && !another(&argc, &argv, "remote-files"))
  goto usage;
 if (argc < 3 && !another(&argc, &argv, "local-file")) {
usage:
  printf("usage: %s remote-files local-file\n", argv[0]);
  code = -1;
  return;
 }
 dest = argv[argc - 1];
 argv[argc - 1] = ((void*)0);
 if (strcmp(dest, "-") && *dest != '|')
  if (!globulize(&dest) ||
      !confirm("output to local-file:", dest)) {
   code = -1;
   return;
 }
 cmd = argv[0][1] == 'l' ? "NLST" : "LIST";
 mname = argv[0];
 mflag = 1;
 oldintr = signal(SIGINT, mabort);
 setjmp(jabort);
 filemode[1] = '\0';
 for (i = 1; mflag && i < argc-1; ++i) {
  *filemode = (i == 1) ? 'w' : 'a';
  recvrequest(cmd, dest, argv[i], filemode, 0, 1);
  if (!mflag && fromatty) {
   ointer = interactive;
   interactive = 1;
   if (confirm("Continue with", argv[0])) {
    mflag ++;
   }
   interactive = ointer;
  }
 }
 signal(SIGINT, oldintr);
 mflag = 0;
}
