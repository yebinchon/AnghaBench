
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sigset_t ;
typedef int path ;
struct TYPE_3__ {int fp; } ;
typedef TYPE_1__ HTAB ;


 int ENAMETOOLONG ;
 int MAXPATHLEN ;
 int O_CLOEXEC ;
 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int __libc_sigprocmask (int ,int *,int *) ;
 int errno ;
 char* getenv (char*) ;
 scalar_t__ issetugid () ;
 int mkostemp (char*,int ) ;
 int sigfillset (int *) ;
 int snprintf (char*,int,char*,char*) ;
 int unlink (char*) ;

__attribute__((used)) static int
open_temp(HTAB *hashp)
{
 sigset_t set, oset;
 int len;
 char *envtmp = ((void*)0);
 char path[MAXPATHLEN];

 if (issetugid() == 0)
  envtmp = getenv("TMPDIR");
 len = snprintf(path,
     sizeof(path), "%s/_hash.XXXXXX", envtmp ? envtmp : "/tmp");
 if (len < 0 || len >= (int)sizeof(path)) {
  errno = ENAMETOOLONG;
  return (-1);
 }


 (void)sigfillset(&set);
 (void)__libc_sigprocmask(SIG_BLOCK, &set, &oset);
 if ((hashp->fp = mkostemp(path, O_CLOEXEC)) != -1)
  (void)unlink(path);
 (void)__libc_sigprocmask(SIG_SETMASK, &oset, (sigset_t *)((void*)0));
 return (hashp->fp != -1 ? 0 : -1);
}
