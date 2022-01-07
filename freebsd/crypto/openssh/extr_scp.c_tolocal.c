
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * list; } ;
typedef TYPE_1__ arglist ;
typedef int alist ;


 char* _PATH_CP ;
 int addargs (TYPE_1__*,char*,...) ;
 int close (int) ;
 int cmd ;
 scalar_t__ do_cmd (char*,char*,int,char*,int*,int*) ;
 scalar_t__ do_local_cmd (TYPE_1__*) ;
 int errs ;
 int fmprintf (int ,char*,char*) ;
 int free (char*) ;
 int freeargs (TYPE_1__*) ;
 scalar_t__ iamrecursive ;
 int memset (TYPE_1__*,char,int) ;
 int okname (char*) ;
 int parse_scp_uri (char*,char**,char**,int*,char**) ;
 int parse_user_host_path (char*,char**,char**,char**) ;
 scalar_t__ pflag ;
 int remin ;
 int remout ;
 int sink (int,char**,char*) ;
 int stderr ;
 int xasprintf (char**,char*,int ,char*,char*) ;

void
tolocal(int argc, char **argv)
{
 char *bp, *host = ((void*)0), *src = ((void*)0), *suser = ((void*)0);
 arglist alist;
 int i, r, sport = -1;

 memset(&alist, '\0', sizeof(alist));
 alist.list = ((void*)0);

 for (i = 0; i < argc - 1; i++) {
  free(suser);
  free(host);
  free(src);
  r = parse_scp_uri(argv[i], &suser, &host, &sport, &src);
  if (r == -1) {
   fmprintf(stderr, "%s: invalid uri\n", argv[i]);
   ++errs;
   continue;
  }
  if (r != 0)
   parse_user_host_path(argv[i], &suser, &host, &src);
  if (suser != ((void*)0) && !okname(suser)) {
   ++errs;
   continue;
  }
  if (!host) {
   freeargs(&alist);
   addargs(&alist, "%s", _PATH_CP);
   if (iamrecursive)
    addargs(&alist, "-r");
   if (pflag)
    addargs(&alist, "-p");
   addargs(&alist, "--");
   addargs(&alist, "%s", argv[i]);
   addargs(&alist, "%s", argv[argc-1]);
   if (do_local_cmd(&alist))
    ++errs;
   continue;
  }

  xasprintf(&bp, "%s -f %s%s",
      cmd, *src == '-' ? "-- " : "", src);
  if (do_cmd(host, suser, sport, bp, &remin, &remout) < 0) {
   free(bp);
   ++errs;
   continue;
  }
  free(bp);
  sink(1, argv + argc - 1, src);
  (void) close(remin);
  remin = remout = -1;
 }
 free(suser);
 free(host);
 free(src);
}
