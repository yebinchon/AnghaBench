
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct stat {int st_mtime; scalar_t__ st_size; } ;
typedef int buf ;


 size_t FEAT_REST_STREAM ;
 int MAXPATHLEN ;
 int UPRINTF (char*,char*) ;
 int another (int*,char***,char*) ;
 int code ;
 char* doprocess (char*,int,char*,int,int,int) ;
 int * features ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 char* globulize (char*) ;
 scalar_t__ mapflag ;
 scalar_t__ mcase ;
 scalar_t__ ntflag ;
 int recvrequest (char*,char const*,char*,char const*,int,int) ;
 int remotemodtime (char*,int ) ;
 scalar_t__ restart_point ;
 int stat (char const*,struct stat*) ;
 int ttyout ;
 int warn (char*,char const*) ;

int
getit(int argc, char *argv[], int restartit, const char *gmode)
{
 int loc, rval;
 char *remfile, *olocfile;
 const char *locfile;
 char buf[MAXPATHLEN];

 loc = rval = 0;
 if (argc == 2) {
  argc++;
  argv[2] = argv[1];
  loc++;
 }
 if (argc == 0 || (argc == 1 && !another(&argc, &argv, "remote-file")))
  goto usage;
 if ((argc < 3 && !another(&argc, &argv, "local-file")) || argc > 3) {
 usage:
  UPRINTF("usage: %s remote-file [local-file]\n", argv[0]);
  code = -1;
  return (0);
 }
 remfile = argv[1];
 if ((olocfile = globulize(argv[2])) == ((void*)0)) {
  code = -1;
  return (0);
 }
 locfile = doprocess(buf, sizeof(buf), olocfile,
  loc && mcase, loc && ntflag, loc && mapflag);
 if (restartit) {
  struct stat stbuf;
  int ret;

  if (! features[FEAT_REST_STREAM]) {
   fprintf(ttyout,
       "Restart is not supported by the remote server.\n");
   return (0);
  }
  ret = stat(locfile, &stbuf);
  if (restartit == 1) {
   if (ret < 0) {
    warn("Can't stat `%s'", locfile);
    goto freegetit;
   }
   restart_point = stbuf.st_size;
  } else {
   if (ret == 0) {
    time_t mtime;

    mtime = remotemodtime(argv[1], 0);
    if (mtime == -1)
     goto freegetit;
    if (stbuf.st_mtime >= mtime) {
     rval = 1;
     goto freegetit;
    }
   }
  }
 }

 recvrequest("RETR", locfile, remfile, gmode,
     remfile != argv[1] || locfile != argv[2], loc);
 restart_point = 0;
 freegetit:
 (void)free(olocfile);
 return (rval);
}
