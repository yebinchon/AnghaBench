
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sv ;
struct puffstestargs {int pta_pflags; int* pta_dir; int* pta_dev; int pta_pargslen; int* pta_pargs; int pta_servfd; int pta_childpid; } ;
typedef int ssize_t ;
typedef int pid_t ;
typedef int off_t ;
typedef int mntflags ;
typedef int len ;
typedef int atf_tc_t ;


 size_t MAXPATHLEN ;
 int PF_LOCAL ;
 int SIGCHLD ;
 int SOCK_STREAM ;
 int childfail ;
 int close (int) ;
 int err (int,char*,...) ;
 int errno ;
 int execvp (char*,char**) ;
 int fork () ;
 void* malloc (int) ;
 int memset (struct puffstestargs*,int ,int) ;
 int setenv (char*,char*,int) ;
 int signal (int ,int ) ;
 int snprintf (char*,int,char*,int) ;
 int socketpair (int ,int ,int ,int*) ;
 int strlcpy (int*,char const*,int) ;
 struct puffstestargs* theargs ;
 int xread (int,...) ;

__attribute__((used)) static int
donewfs(const atf_tc_t *tc, void **argp,
 const char *image, off_t size, void *fspriv, char **theargv)
{
 struct puffstestargs *args;
 pid_t childpid;
 int *pflags;
 char comfd[16];
 int sv[2];
 int mntflags;
 size_t len;
 ssize_t n;

 *argp = ((void*)0);

 args = malloc(sizeof(*args));
 if (args == ((void*)0))
  return errno;
 memset(args, 0, sizeof(*args));

 pflags = &args->pta_pflags;


 if (socketpair(PF_LOCAL, SOCK_STREAM, 0, sv) == -1)
  return errno;

 signal(SIGCHLD, childfail);

 switch ((childpid = fork())) {
 case 0:
  close(sv[1]);
  snprintf(comfd, sizeof(sv[0]), "%d", sv[0]);
  if (setenv("PUFFS_COMFD", comfd, 1) == -1)
   return errno;

  if (execvp(theargv[0], theargv) == -1)
   return errno;
 case -1:
  return errno;
 default:
  close(sv[0]);
  break;
 }


 if ((n = xread(sv[1], &len, sizeof(len))) != sizeof(len))
  err(1, "mp 1 %zd", n);
 if (len > MAXPATHLEN)
  err(1, "mntpath > MAXPATHLEN");
 if ((size_t)xread(sv[1], args->pta_dir, len) != len)
  err(1, "mp 2");
 if (xread(sv[1], &len, sizeof(len)) != sizeof(len))
  err(1, "fn 1");
 if (len > MAXPATHLEN)
  err(1, "devpath > MAXPATHLEN");
 if ((size_t)xread(sv[1], args->pta_dev, len) != len)
  err(1, "fn 2");
 if (xread(sv[1], &mntflags, sizeof(mntflags)) != sizeof(mntflags))
  err(1, "mntflags");
 if (xread(sv[1], &args->pta_pargslen, sizeof(args->pta_pargslen))
     != sizeof(args->pta_pargslen))
  err(1, "puffstest_args len");
 args->pta_pargs = malloc(args->pta_pargslen);
 if (args->pta_pargs == ((void*)0))
  err(1, "malloc");
 if (xread(sv[1], args->pta_pargs, args->pta_pargslen)
     != (ssize_t)args->pta_pargslen)
  err(1, "puffstest_args");
 if (xread(sv[1], pflags, sizeof(*pflags)) != sizeof(*pflags))
  err(1, "pflags");

 args->pta_childpid = childpid;
 args->pta_servfd = sv[1];
 strlcpy(args->pta_dev, image, sizeof(args->pta_dev));

 *argp = theargs = args;

 return 0;
}
