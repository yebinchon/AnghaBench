
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;
typedef int sigfunc ;
typedef int buf ;


 size_t FEAT_REST_STREAM ;
 int MAXPATHLEN ;
 int SIGINT ;
 int UPRINTF (char*,char*) ;
 int another (int*,char***,char*) ;
 int code ;
 scalar_t__ confirm (char*,char*) ;
 int connected ;
 char* doprocess (char*,int,char*,int ,int ,int ) ;
 int * features ;
 int fileindir (char*,int ) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ fromatty ;
 int interactive ;
 int jabort ;
 int localcwd ;
 int mabort (char*) ;
 int mapflag ;
 int mcase ;
 int mflag ;
 int mintr ;
 int ntflag ;
 int proxy ;
 int recvrequest (char*,char const*,char*,char*,int,int) ;
 char* remglob (char**,int ,int *) ;
 scalar_t__ restart_point ;
 scalar_t__ sigsetjmp (int ,int) ;
 scalar_t__ stat (char const*,struct stat*) ;
 scalar_t__ strcmp (char*,char*) ;
 int ttyout ;
 int warn (char*,char const*) ;
 int xsignal (int ,int ) ;

void
mget(int argc, char *argv[])
{
 sigfunc oldintr;
 int ointer;
 char *cp;
 const char *tp;
 int volatile restartit;

 if (argc == 0 ||
     (argc == 1 && !another(&argc, &argv, "remote-files"))) {
  UPRINTF("usage: %s remote-files\n", argv[0]);
  code = -1;
  return;
 }
 mflag = 1;
 restart_point = 0;
 restartit = 0;
 if (strcmp(argv[0], "mreget") == 0) {
  if (! features[FEAT_REST_STREAM]) {
   fprintf(ttyout,
      "Restart is not supported by the remote server.\n");
   return;
  }
  restartit = 1;
 }
 oldintr = xsignal(SIGINT, mintr);
 if (sigsetjmp(jabort, 1))
  mabort(argv[0]);
 while ((cp = remglob(argv, proxy, ((void*)0))) != ((void*)0)) {
  char buf[MAXPATHLEN];
  if (*cp == '\0' || !connected) {
   mflag = 0;
   continue;
  }
  if (! mflag)
   continue;
  if (! fileindir(cp, localcwd)) {
   fprintf(ttyout, "Skipping non-relative filename `%s'\n",
       cp);
   continue;
  }
  if (!confirm(argv[0], cp))
   continue;
  tp = doprocess(buf, sizeof(buf), cp, mcase, ntflag, mapflag);
  if (restartit) {
   struct stat stbuf;

   if (stat(tp, &stbuf) == 0)
    restart_point = stbuf.st_size;
   else
    warn("Can't stat `%s'", tp);
  }
  recvrequest("RETR", tp, cp, restart_point ? "r+" : "w",
      tp != cp || !interactive, 1);
  restart_point = 0;
  if (!mflag && fromatty) {
   ointer = interactive;
   interactive = 1;
   if (confirm(argv[0], ((void*)0)))
    mflag++;
   interactive = ointer;
  }
 }
 (void)xsignal(SIGINT, oldintr);
 mflag = 0;
}
