
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int MAXPATHLEN ;
 int UPRINTF (char*,char*) ;
 int another (int*,char***,char*) ;
 int code ;
 char* doprocess (char*,int,char const*,int ,int,int) ;
 int free (char*) ;
 char* globulize (char*) ;
 scalar_t__ mapflag ;
 scalar_t__ ntflag ;
 int sendrequest (char const*,char*,char const*,int) ;
 scalar_t__ sunique ;

void
put(int argc, char *argv[])
{
 char buf[MAXPATHLEN];
 const char *cmd;
 int loc = 0;
 char *locfile;
 const char *remfile;

 if (argc == 2) {
  argc++;
  argv[2] = argv[1];
  loc++;
 }
 if (argc == 0 || (argc == 1 && !another(&argc, &argv, "local-file")))
  goto usage;
 if ((argc < 3 && !another(&argc, &argv, "remote-file")) || argc > 3) {
 usage:
  UPRINTF("usage: %s local-file [remote-file]\n", argv[0]);
  code = -1;
  return;
 }
 if ((locfile = globulize(argv[1])) == ((void*)0)) {
  code = -1;
  return;
 }
 remfile = argv[2];
 if (loc)
  remfile = locfile;
 cmd = (argv[0][0] == 'a') ? "APPE" : ((sunique) ? "STOU" : "STOR");
 remfile = doprocess(buf, sizeof(buf), remfile,
  0, loc && ntflag, loc && mapflag);
 sendrequest(cmd, locfile, remfile,
     locfile != argv[1] || remfile != argv[2]);
 free(locfile);
}
