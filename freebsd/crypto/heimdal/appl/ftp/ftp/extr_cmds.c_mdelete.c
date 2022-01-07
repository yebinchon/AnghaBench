
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sighand ;


 int SIGINT ;
 int another (int*,char***,char*) ;
 int code ;
 int command (char*,char*) ;
 scalar_t__ confirm (char*,char*) ;
 scalar_t__ fromatty ;
 int interactive ;
 int jabort ;
 int mabort ;
 int mflag ;
 char* mname ;
 int printf (char*,char*) ;
 char* remglob (char**,int ) ;
 int setjmp (int ) ;
 int signal (int ,int ) ;

void
mdelete(int argc, char **argv)
{
    sighand oldintr;
    int ointer;
    char *cp;

    if (argc < 2 && !another(&argc, &argv, "remote-files")) {
 printf("usage: %s remote-files\n", argv[0]);
 code = -1;
 return;
    }
    mname = argv[0];
    mflag = 1;
    oldintr = signal(SIGINT, mabort);
    setjmp(jabort);
    while ((cp = remglob(argv,0)) != ((void*)0)) {
 if (*cp == '\0') {
     mflag = 0;
     continue;
 }
 if (mflag && confirm(argv[0], cp)) {
     command("DELE %s", cp);
     if (!mflag && fromatty) {
  ointer = interactive;
  interactive = 1;
  if (confirm("Continue with", "mdelete")) {
      mflag++;
  }
  interactive = ointer;
     }
 }
    }
    signal(SIGINT, oldintr);
    mflag = 0;
}
