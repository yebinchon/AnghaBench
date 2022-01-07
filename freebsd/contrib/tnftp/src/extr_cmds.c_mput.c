
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sigfunc ;
struct TYPE_5__ {scalar_t__ gl_pathc; char** gl_pathv; } ;
typedef TYPE_1__ glob_t ;
typedef int gl ;
typedef int buf ;


 int GLOB_BRACE ;
 int GLOB_NOCHECK ;
 int GLOB_TILDE ;
 int MAXPATHLEN ;
 int SIGINT ;
 int UPRINTF (char*,char*) ;
 int another (int*,char***,char*) ;
 int code ;
 scalar_t__ confirm (char*,char*) ;
 scalar_t__ connected ;
 int doglob ;
 char* doprocess (char*,int,char*,int ,int ,int ) ;
 scalar_t__ fromatty ;
 scalar_t__ glob (char*,int,int *,TYPE_1__*) ;
 int globfree (TYPE_1__*) ;
 int interactive ;
 int jabort ;
 int mabort (char*) ;
 int mapflag ;
 int mcase ;
 int memset (TYPE_1__*,int ,int) ;
 int mflag ;
 int mintr ;
 int ntflag ;
 scalar_t__ proxy ;
 char* remglob (char**,int ,int *) ;
 int sendrequest (char*,char*,char const*,int) ;
 scalar_t__ sigsetjmp (int ,int) ;
 scalar_t__ sunique ;
 int warnx (char*,char*) ;
 int xsignal (int ,int ) ;

void
mput(int argc, char *argv[])
{
 int i;
 sigfunc oldintr;
 int ointer;
 const char *tp;

 if (argc == 0 || (argc == 1 && !another(&argc, &argv, "local-files"))) {
  UPRINTF("usage: %s local-files\n", argv[0]);
  code = -1;
  return;
 }
 mflag = 1;
 oldintr = xsignal(SIGINT, mintr);
 if (sigsetjmp(jabort, 1))
  mabort(argv[0]);
 if (proxy) {
  char *cp;

  while ((cp = remglob(argv, 0, ((void*)0))) != ((void*)0)) {
   if (*cp == '\0' || !connected) {
    mflag = 0;
    continue;
   }
   if (mflag && confirm(argv[0], cp)) {
    char buf[MAXPATHLEN];
    tp = doprocess(buf, sizeof(buf), cp,
        mcase, ntflag, mapflag);
    sendrequest((sunique) ? "STOU" : "STOR",
        cp, tp, cp != tp || !interactive);
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
  goto cleanupmput;
 }
 for (i = 1; i < argc && connected; i++) {
  char **cpp;
  glob_t gl;
  int flags;

  if (!doglob) {
   if (mflag && confirm(argv[0], argv[i])) {
    char buf[MAXPATHLEN];
    tp = doprocess(buf, sizeof(buf), argv[i],
     0, ntflag, mapflag);
    sendrequest((sunique) ? "STOU" : "STOR",
        argv[i], tp, tp != argv[i] || !interactive);
    if (!mflag && fromatty) {
     ointer = interactive;
     interactive = 1;
     if (confirm(argv[0], ((void*)0))) {
      mflag++;
     }
     interactive = ointer;
    }
   }
   continue;
  }

  memset(&gl, 0, sizeof(gl));
  flags = GLOB_BRACE|GLOB_NOCHECK|GLOB_TILDE;
  if (glob(argv[i], flags, ((void*)0), &gl) || gl.gl_pathc == 0) {
   warnx("Glob pattern `%s' not found", argv[i]);
   globfree(&gl);
   continue;
  }
  for (cpp = gl.gl_pathv; cpp && *cpp != ((void*)0) && connected;
      cpp++) {
   if (mflag && confirm(argv[0], *cpp)) {
    char buf[MAXPATHLEN];
    tp = *cpp;
    tp = doprocess(buf, sizeof(buf), *cpp,
        0, ntflag, mapflag);
    sendrequest((sunique) ? "STOU" : "STOR",
        *cpp, tp, *cpp != tp || !interactive);
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
  globfree(&gl);
 }
 cleanupmput:
 (void)xsignal(SIGINT, oldintr);
 mflag = 0;
}
