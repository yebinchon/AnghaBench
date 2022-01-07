
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sighand ;


 int MaxPathLen ;
 int SIGINT ;
 scalar_t__ TYPE_I ;
 int another (int*,char***,char*) ;
 int code ;
 scalar_t__ confirm (char*,char*) ;
 scalar_t__ curtype ;
 char* domap (char*) ;
 char* dotrans (char*) ;
 scalar_t__ fromatty ;
 int interactive ;
 int jabort ;
 int mabort ;
 scalar_t__ mapflag ;
 scalar_t__ mcase ;
 int mflag ;
 char* mname ;
 scalar_t__ ntflag ;
 int printf (char*,char*) ;
 int proxy ;
 int recvrequest (char*,char*,char*,char*,int,int ) ;
 char* remglob (char**,int ) ;
 int setjmp (int ) ;
 int signal (int ,int ) ;
 scalar_t__ suspicious_filename (char*) ;
 int tolower (int) ;

void
mget(int argc, char **argv)
{
 sighand oldintr;
 int ch, ointer;
 char *cp, *tp, *tp2, tmpbuf[MaxPathLen];

 if (argc < 2 && !another(&argc, &argv, "remote-files")) {
  printf("usage: %s remote-files\n", argv[0]);
  code = -1;
  return;
 }
 mname = argv[0];
 mflag = 1;
 oldintr = signal(SIGINT, mabort);
 setjmp(jabort);
 while ((cp = remglob(argv,proxy)) != ((void*)0)) {
  if (*cp == '\0') {
   mflag = 0;
   continue;
  }
  if (mflag && suspicious_filename(cp))
      printf("*** Suspicious filename: %s\n", cp);
  if (mflag && confirm(argv[0], cp)) {
   tp = cp;
   if (mcase) {
    for (tp2 = tmpbuf;(ch = (unsigned char)*tp++);)
     *tp2++ = tolower(ch);
    *tp2 = '\0';
    tp = tmpbuf;
   }
   if (ntflag) {
    tp = dotrans(tp);
   }
   if (mapflag) {
    tp = domap(tp);
   }
   recvrequest("RETR", tp, cp,
        curtype == TYPE_I ? "wb" : "w",
        tp != cp || !interactive, 0);
   if (!mflag && fromatty) {
    ointer = interactive;
    interactive = 1;
    if (confirm("Continue with","mget")) {
     mflag++;
    }
    interactive = ointer;
   }
  }
 }
 signal(SIGINT,oldintr);
 mflag = 0;
}
