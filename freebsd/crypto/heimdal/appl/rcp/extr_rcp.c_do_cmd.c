
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* RSH_PROGRAM ;
 int close (int) ;
 scalar_t__ doencrypt ;
 int dup2 (int,int) ;
 scalar_t__ eflag ;
 int execvp (char*,char**) ;
 int exit (int) ;
 scalar_t__ fork () ;
 scalar_t__ forwardtkt ;
 scalar_t__ noencrypt ;
 int perror (char*) ;
 scalar_t__ pipe (int*) ;
 char* port ;
 scalar_t__ usebroken ;
 scalar_t__ usekrb4 ;
 scalar_t__ usekrb5 ;

int
do_cmd(char *host, char *remuser, char *cmd, int *fdin, int *fdout)
{
 int pin[2], pout[2], reserved[2];





 pipe(reserved);


 if (pipe(pin) < 0) {
  perror("pipe");
  exit(255);
 }
 if (pipe(pout) < 0) {
  perror("pipe");
  exit(255);
 }


 close(reserved[0]);
 close(reserved[1]);


 if (fork() == 0) {
  char *args[100];
  unsigned int i;


  close(pin[1]);
  close(pout[0]);
  dup2(pin[0], 0);
  dup2(pout[1], 1);
  close(pin[0]);
  close(pout[1]);

  i = 0;
  args[i++] = RSH_PROGRAM;
  if (usekrb4)
   args[i++] = "-4";
  if (usekrb5)
   args[i++] = "-5";
  if (usebroken)
   args[i++] = "-K";
  if (doencrypt)
   args[i++] = "-x";
  if (forwardtkt)
   args[i++] = "-F";
  if (noencrypt)
   args[i++] = "-z";
  if (port != ((void*)0)) {
   args[i++] = "-p";
   args[i++] = port;
  }
  if (eflag)
      args[i++] = "-e";
  if (remuser != ((void*)0)) {
   args[i++] = "-l";
   args[i++] = remuser;
  }
  args[i++] = host;
  args[i++] = cmd;
  args[i++] = ((void*)0);

  execvp(RSH_PROGRAM, args);
  perror(RSH_PROGRAM);
  exit(1);
 }

 close(pin[0]);
 *fdout = pin[1];
 close(pout[1]);
 *fdin = pout[0];
 return 0;
}
