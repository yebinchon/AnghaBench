
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigfunc ;


 scalar_t__ COMPLETE ;
 int SIGINT ;
 int UPRINTF (char*,char*) ;
 int another (int*,char***,char*) ;
 int code ;
 scalar_t__ command (char*,char*) ;
 scalar_t__ confirm (char*,char*) ;
 int dirchange ;
 scalar_t__ fromatty ;
 int interactive ;
 int jabort ;
 int mabort (char*) ;
 int mflag ;
 int mintr ;
 char* remglob (char**,int ,int *) ;
 scalar_t__ sigsetjmp (int ,int) ;
 int xsignal (int ,int ) ;

void
mdelete(int argc, char *argv[])
{
 sigfunc oldintr;
 int ointer;
 char *cp;

 if (argc == 0 ||
     (argc == 1 && !another(&argc, &argv, "remote-files"))) {
  UPRINTF("usage: %s [remote-files]\n", argv[0]);
  code = -1;
  return;
 }
 mflag = 1;
 oldintr = xsignal(SIGINT, mintr);
 if (sigsetjmp(jabort, 1))
  mabort(argv[0]);
 while ((cp = remglob(argv, 0, ((void*)0))) != ((void*)0)) {
  if (*cp == '\0') {
   mflag = 0;
   continue;
  }
  if (mflag && confirm(argv[0], cp)) {
   if (command("DELE %s", cp) == COMPLETE)
    dirchange = 1;
   if (!mflag && fromatty) {
    ointer = interactive;
    interactive = 1;
    if (confirm(argv[0], ((void*)0))) {
     mflag++;
    }
    interactive = ointer;
   }
  }
 }
 (void)xsignal(SIGINT, oldintr);
 mflag = 0;
}
