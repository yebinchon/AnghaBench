
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* pw_name; } ;


 int _PATH_RSH ;
 int asprintf (char**,char*,int ,char*,...) ;
 int cmd ;
 char* colon (char*) ;
 scalar_t__ do_cmd (char*,char*,char*,int*,int *) ;
 scalar_t__ eflag ;
 int err (int,char*) ;
 int exit (int) ;
 int free (char*) ;
 int okname (char*) ;
 TYPE_1__* pwd ;
 int remin ;
 int remout ;
 scalar_t__ response () ;
 int source (int,char**) ;
 char* strchr (char*,char) ;
 int susystem (char*) ;
 char* unbracket (char*) ;

void
toremote(char *targ, int argc, char **argv)
{
 int i;
 char *bp, *host, *src, *suser, *thost, *tuser;

 *targ++ = 0;
 if (*targ == 0)
  targ = ".";

 if ((thost = strchr(argv[argc - 1], '@')) != ((void*)0)) {

  *thost++ = 0;
  tuser = argv[argc - 1];
  if (*tuser == '\0')
   tuser = ((void*)0);
  else if (!okname(tuser))
   exit(1);
 } else {
  thost = argv[argc - 1];
  tuser = ((void*)0);
 }
 thost = unbracket(thost);

 for (i = 0; i < argc - 1; i++) {
  src = colon(argv[i]);
  if (src) {
   int ret;
   *src++ = 0;
   if (*src == 0)
    src = ".";
   host = strchr(argv[i], '@');
   if (host) {
    *host++ = '\0';
    host = unbracket(host);
    suser = argv[i];
    if (*suser == '\0')
     suser = pwd->pw_name;
    else if (!okname(suser))
     continue;
    ret = asprintf(&bp,
        "%s%s %s -l %s -n %s %s '%s%s%s:%s'",
      _PATH_RSH, eflag ? " -e" : "",
      host, suser, cmd, src,
        tuser ? tuser : "", tuser ? "@" : "",
        thost, targ);
   } else {
    host = unbracket(argv[i]);
    ret = asprintf(&bp,
      "exec %s%s %s -n %s %s '%s%s%s:%s'",
      _PATH_RSH, eflag ? " -e" : "",
      host, cmd, src,
      tuser ? tuser : "", tuser ? "@" : "",
      thost, targ);
   }
   if (ret == -1)
    err (1, "malloc");
   susystem(bp);
   free(bp);
  } else {
   if (remin == -1) {
    if (asprintf(&bp, "%s -t %s", cmd, targ) == -1)
     err (1, "malloc");
    host = thost;

    if (do_cmd(host, tuser, bp, &remin, &remout) < 0)
     exit(1);

    if (response() < 0)
     exit(1);
    free(bp);
   }
   source(1, argv+i);
  }
 }
}
