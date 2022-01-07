
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;
typedef int FILE ;


 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int TRAILER ;
 char* _PATH_TMP ;
 int __libc_sigprocmask (int ,int *,int *) ;
 int _close (int) ;
 int asprintf (char**,char*,char const*,char*,int ) ;
 int errno ;
 int * fdopen (int,char*) ;
 int free (char*) ;
 char* getenv (char*) ;
 scalar_t__ issetugid () ;
 int mkstemp (char*) ;
 int sigfillset (int *) ;
 int strlen (char const*) ;
 int unlink (char*) ;

FILE *
tmpfile(void)
{
 sigset_t set, oset;
 FILE *fp;
 int fd, sverrno;

 char *buf;
 const char *tmpdir;

 tmpdir = ((void*)0);
 if (issetugid() == 0)
  tmpdir = getenv("TMPDIR");
 if (tmpdir == ((void*)0))
  tmpdir = _PATH_TMP;

 (void)asprintf(&buf, "%s%s%s", tmpdir,
     (tmpdir[strlen(tmpdir) - 1] == '/') ? "" : "/", "tmp.XXXXXX");
 if (buf == ((void*)0))
  return (((void*)0));

 sigfillset(&set);
 (void)__libc_sigprocmask(SIG_BLOCK, &set, &oset);

 fd = mkstemp(buf);
 if (fd != -1)
  (void)unlink(buf);

 free(buf);

 (void)__libc_sigprocmask(SIG_SETMASK, &oset, ((void*)0));

 if (fd == -1)
  return (((void*)0));

 if ((fp = fdopen(fd, "w+")) == ((void*)0)) {
  sverrno = errno;
  (void)_close(fd);
  errno = sverrno;
  return (((void*)0));
 }
 return (fp);
}
