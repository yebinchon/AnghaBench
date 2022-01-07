
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uintmax_t ;
struct stat {int dummy; } ;
typedef int pid_t ;
typedef int gid_t ;
struct TYPE_4__ {scalar_t__ tv_sec; } ;


 int LOG_ERR ;
 int LOG_INFO ;
 int PATH_PFCTL ;
 int PATH_PFRULES ;
 int PATH_USER_DIR ;
 TYPE_1__ Tend ;
 TYPE_1__ Tstart ;
 int _exit (int) ;
 int anchorname ;
 int asprintf (char**,char*,char const*,...) ;
 int dev ;
 int err (int,char*) ;
 int execvp (int ,char**) ;
 int fork () ;
 int free (char*) ;
 int getgid () ;
 int gettimeofday (TYPE_1__*,int *) ;
 int remove_stale_rulesets () ;
 char const* rulesetname ;
 int setregid (int ,int ) ;
 int stat (char*,struct stat*) ;
 char* strdup (int ) ;
 int syslog (int ,char*,...) ;
 scalar_t__ user_ip ;
 int waitpid (int ,int*,int ) ;
 int warn (char*,int ) ;

__attribute__((used)) static int
change_filter(int add, const char *l_user, const char *ip_src)
{
 char *fdpath = ((void*)0), *userstr = ((void*)0), *ipstr = ((void*)0);
 char *rsn = ((void*)0), *fn = ((void*)0);
 pid_t pid;
 gid_t gid;
 int s;

 if (add) {
  struct stat sb;
  char *pargv[13] = {
   "pfctl", "-p", "/dev/pf", "-q", "-a", "anchor/ruleset",
   "-D", "user_id=X", "-D", "user_ip=X", "-f", "file", ((void*)0)
  };

  if (l_user == ((void*)0) || !l_user[0] || ip_src == ((void*)0) || !ip_src[0]) {
   syslog(LOG_ERR, "invalid luser/ipsrc");
   goto error;
  }

  if (asprintf(&rsn, "%s/%s", anchorname, rulesetname) == -1)
   goto no_mem;
  if (asprintf(&fdpath, "/dev/fd/%d", dev) == -1)
   goto no_mem;
  if (asprintf(&ipstr, "user_ip=%s", ip_src) == -1)
   goto no_mem;
  if (asprintf(&userstr, "user_id=%s", l_user) == -1)
   goto no_mem;
  if (asprintf(&fn, "%s/%s/authpf.rules",
      PATH_USER_DIR, l_user) == -1)
   goto no_mem;
  if (stat(fn, &sb) == -1) {
   free(fn);
   if ((fn = strdup(PATH_PFRULES)) == ((void*)0))
    goto no_mem;
  }
  pargv[2] = fdpath;
  pargv[5] = rsn;
  pargv[7] = userstr;
  if (user_ip) {
   pargv[9] = ipstr;
   pargv[11] = fn;
  } else {
   pargv[8] = "-f";
   pargv[9] = fn;
   pargv[10] = ((void*)0);
  }

  switch (pid = fork()) {
  case -1:
   syslog(LOG_ERR, "fork failed");
   goto error;
  case 0:

   gid = getgid();
   if (setregid(gid, gid) == -1) {
    err(1, "setregid");
   }
   execvp(PATH_PFCTL, pargv);
   warn("exec of %s failed", PATH_PFCTL);
   _exit(1);
  }


  waitpid(pid, &s, 0);
  if (s != 0) {
   syslog(LOG_ERR, "pfctl exited abnormally");
   goto error;
  }

  gettimeofday(&Tstart, ((void*)0));
  syslog(LOG_INFO, "allowing %s, user %s", ip_src, l_user);
 } else {
  remove_stale_rulesets();

  gettimeofday(&Tend, ((void*)0));
  syslog(LOG_INFO, "removed %s, user %s - duration %ju seconds",
      ip_src, l_user, (uintmax_t)(Tend.tv_sec - Tstart.tv_sec));
 }
 return (0);
no_mem:
 syslog(LOG_ERR, "malloc failed");
error:
 free(fdpath);
 free(rsn);
 free(userstr);
 free(ipstr);
 free(fn);
 return (-1);
}
