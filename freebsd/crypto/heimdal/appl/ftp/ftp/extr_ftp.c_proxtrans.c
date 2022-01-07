
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * sighand ;
typedef int fd_set ;
typedef int FILE ;


 scalar_t__ COMPLETE ;
 int FD_SET (scalar_t__,int *) ;
 scalar_t__ FD_SETSIZE ;
 int FD_ZERO (int *) ;
 scalar_t__ PRELIM ;
 int SIGINT ;
 int * SIG_IGN ;
 int TYPE_A ;
 int TYPE_I ;
 int abort_remote (int *) ;
 int * abortpt ;
 int changetype (int,int) ;
 int cin ;
 int code ;
 scalar_t__ command (char*,...) ;
 int connected ;
 scalar_t__ cpend ;
 int curtype ;
 int empty (int *,int) ;
 int errx (int,char*) ;
 scalar_t__ fileno (int ) ;
 int getreply (int ) ;
 int lostpeer (int ) ;
 int pasv ;
 int printf (char*,...) ;
 scalar_t__ proxy ;
 int pswitch (int) ;
 scalar_t__ ptabflg ;
 int ptabort ;
 scalar_t__ ptflag ;
 scalar_t__ runique ;
 scalar_t__ setjmp (int ) ;
 int * signal (int ,int *) ;
 int sleep (int) ;
 scalar_t__ strcmp (char*,char*) ;
 int type ;
 scalar_t__ unix_proxy ;
 scalar_t__ unix_server ;
 int warn (char*) ;

void
proxtrans (char *cmd, char *local, char *remote)
{
    sighand oldintr = ((void*)0);
    int secndflag = 0, prox_type, nfnd;
    char *cmd2;
    fd_set mask;

    if (strcmp (cmd, "RETR"))
 cmd2 = "RETR";
    else
 cmd2 = runique ? "STOU" : "STOR";
    if ((prox_type = type) == 0) {
 if (unix_server && unix_proxy)
     prox_type = TYPE_I;
 else
     prox_type = TYPE_A;
    }
    if (curtype != prox_type)
 changetype (prox_type, 1);
    if (command ("PASV") != COMPLETE) {
 printf ("proxy server does not support third party transfers.\n");
 return;
    }
    pswitch (0);
    if (!connected) {
 printf ("No primary connection\n");
 pswitch (1);
 code = -1;
 return;
    }
    if (curtype != prox_type)
 changetype (prox_type, 1);
    if (command ("PORT %s", pasv) != COMPLETE) {
 pswitch (1);
 return;
    }
    if (setjmp (ptabort))
 goto abort;
    oldintr = signal (SIGINT, abortpt);
    if (command ("%s %s", cmd, remote) != PRELIM) {
 signal (SIGINT, oldintr);
 pswitch (1);
 return;
    }
    sleep (2);
    pswitch (1);
    secndflag++;
    if (command ("%s %s", cmd2, local) != PRELIM)
 goto abort;
    ptflag++;
    getreply (0);
    pswitch (0);
    getreply (0);
    signal (SIGINT, oldintr);
    pswitch (1);
    ptflag = 0;
    printf ("local: %s remote: %s\n", local, remote);
    return;
abort:
    signal (SIGINT, SIG_IGN);
    ptflag = 0;
    if (strcmp (cmd, "RETR") && !proxy)
 pswitch (1);
    else if (!strcmp (cmd, "RETR") && proxy)
 pswitch (0);
    if (!cpend && !secndflag) {
 if (command ("%s %s", cmd2, local) != PRELIM) {
     pswitch (0);
     if (cpend)
  abort_remote ((FILE *) ((void*)0));
 }
 pswitch (1);
 if (ptabflg)
     code = -1;
 if (oldintr)
     signal (SIGINT, oldintr);
 return;
    }
    if (cpend)
 abort_remote ((FILE *) ((void*)0));
    pswitch (!proxy);
    if (!cpend && !secndflag) {
 if (command ("%s %s", cmd2, local) != PRELIM) {
     pswitch (0);
     if (cpend)
  abort_remote ((FILE *) ((void*)0));
     pswitch (1);
     if (ptabflg)
  code = -1;
     signal (SIGINT, oldintr);
     return;
 }
    }
    if (cpend)
 abort_remote ((FILE *) ((void*)0));
    pswitch (!proxy);
    if (cpend) {
 FD_ZERO (&mask);
 if (fileno(cin) >= FD_SETSIZE)
     errx (1, "fd too large");
 FD_SET (fileno (cin), &mask);
 if ((nfnd = empty (&mask, 10)) <= 0) {
     if (nfnd < 0) {
  warn ("abort");
     }
     if (ptabflg)
  code = -1;
     lostpeer (0);
 }
 getreply (0);
 getreply (0);
    }
    if (proxy)
 pswitch (0);
    pswitch (1);
    if (ptabflg)
 code = -1;
    signal (SIGINT, oldintr);
}
