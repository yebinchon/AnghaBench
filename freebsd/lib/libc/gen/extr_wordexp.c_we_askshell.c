
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t we_nbytes; size_t we_wordc; size_t we_offs; char** we_wordv; char* we_strings; } ;
typedef TYPE_1__ wordexp_t ;
typedef int wfdstr ;
typedef int sigset_t ;
typedef scalar_t__ pid_t ;


 int EINTR ;
 int F_SETFD ;
 int O_CLOEXEC ;
 int SIGCHLD ;
 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int STDOUT_FILENO ;
 scalar_t__ WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int WRDE_APPEND ;
 int WRDE_BADVAL ;
 int WRDE_CMDSUB ;
 int WRDE_DOOFFS ;
 int WRDE_NOCMD ;
 int WRDE_NOSPACE ;
 int WRDE_SHOWERR ;
 int WRDE_SYNTAX ;
 int WRDE_UNDEF ;
 int _PATH_BSHELL ;
 int __libc_sigprocmask (int ,int *,int *) ;
 int _close (int) ;
 scalar_t__ _dup2 (int,int) ;
 int _exit (int) ;
 scalar_t__ _fcntl (int,int ,int ) ;
 scalar_t__ _waitpid (scalar_t__,int*,int ) ;
 int errno ;
 int execl (int ,char*,char*,char*,char*,char*,char const*,char*,char*,char*,char*) ;
 scalar_t__ fork () ;
 char* getenv (char*) ;
 char* memchr (char*,char,long) ;
 scalar_t__ pipe2 (int*,int ) ;
 char* realloc (char*,long) ;
 char** reallocarray (char**,int,int) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int snprintf (char*,int,char*,int) ;
 int strlen (char const*) ;
 long strtol (char*,int *,int) ;
 long we_read_fully (int,char*,long) ;
 int we_write_fully (int,char const*,int ) ;

__attribute__((used)) static int
we_askshell(const char *words, wordexp_t *we, int flags)
{
 int pdesw[2];
 int pdes[2];
 char wfdstr[sizeof(int) * 3 + 1];
 char buf[35];
 long nwords, nbytes;
 long i;
 size_t sofs;
 size_t vofs;
 pid_t pid;
 pid_t wpid;
 int status;
 int error;
 int serrno;
 char *np, *p;
 char *nstrings;
 char **nwv;
 sigset_t newsigblock, oldsigblock;
 const char *ifs;

 serrno = errno;
 ifs = getenv("IFS");

 if (pipe2(pdesw, O_CLOEXEC) < 0)
  return (WRDE_NOSPACE);
 snprintf(wfdstr, sizeof(wfdstr), "%d", pdesw[0]);
 if (pipe2(pdes, O_CLOEXEC) < 0) {
  _close(pdesw[0]);
  _close(pdesw[1]);
  return (WRDE_NOSPACE);
 }
 (void)sigemptyset(&newsigblock);
 (void)sigaddset(&newsigblock, SIGCHLD);
 (void)__libc_sigprocmask(SIG_BLOCK, &newsigblock, &oldsigblock);
 if ((pid = fork()) < 0) {
  serrno = errno;
  _close(pdesw[0]);
  _close(pdesw[1]);
  _close(pdes[0]);
  _close(pdes[1]);
  (void)__libc_sigprocmask(SIG_SETMASK, &oldsigblock, ((void*)0));
  errno = serrno;
  return (WRDE_NOSPACE);
 }
 else if (pid == 0) {



  (void)__libc_sigprocmask(SIG_SETMASK, &oldsigblock, ((void*)0));
  if ((pdes[1] != STDOUT_FILENO ?
      _dup2(pdes[1], STDOUT_FILENO) :
      _fcntl(pdes[1], F_SETFD, 0)) < 0)
   _exit(1);
  if (_fcntl(pdesw[0], F_SETFD, 0) < 0)
   _exit(1);
  execl(_PATH_BSHELL, "sh", flags & WRDE_UNDEF ? "-u" : "+u",
      "-c", "IFS=$1;eval \"$2\";"
      "freebsd_wordexp -f \"$3\" ${4:+\"$4\"}",
      "",
      ifs != ((void*)0) ? ifs : " \t\n",
      flags & WRDE_SHOWERR ? "" : "exec 2>/dev/null",
      wfdstr,
      flags & WRDE_NOCMD ? "-p" : "",
      (char *)((void*)0));
  _exit(1);
 }




 _close(pdes[1]);
 _close(pdesw[0]);
 if (!we_write_fully(pdesw[1], words, strlen(words))) {
  _close(pdesw[1]);
  error = WRDE_SYNTAX;
  goto cleanup;
 }
 _close(pdesw[1]);







 switch (we_read_fully(pdes[0], buf, 34)) {
 case 1:
  error = buf[0] == 'C' ? WRDE_CMDSUB : WRDE_BADVAL;
  serrno = errno;
  goto cleanup;
 case 34:
  break;
 default:
  error = WRDE_SYNTAX;
  serrno = errno;
  goto cleanup;
 }
 buf[17] = '\0';
 nwords = strtol(buf + 1, ((void*)0), 16);
 buf[34] = '\0';
 nbytes = strtol(buf + 18, ((void*)0), 16) + nwords;






 sofs = we->we_nbytes;
 vofs = we->we_wordc;
 if ((flags & (WRDE_DOOFFS|WRDE_APPEND)) == (WRDE_DOOFFS|WRDE_APPEND))
  vofs += we->we_offs;
 we->we_wordc += nwords;
 we->we_nbytes += nbytes;
 if ((nwv = reallocarray(we->we_wordv, (we->we_wordc + 1 +
     (flags & WRDE_DOOFFS ? we->we_offs : 0)),
     sizeof(char *))) == ((void*)0)) {
  error = WRDE_NOSPACE;
  goto cleanup;
 }
 we->we_wordv = nwv;
 if ((nstrings = realloc(we->we_strings, we->we_nbytes)) == ((void*)0)) {
  error = WRDE_NOSPACE;
  goto cleanup;
 }
 for (i = 0; i < vofs; i++)
  if (we->we_wordv[i] != ((void*)0))
   we->we_wordv[i] += nstrings - we->we_strings;
 we->we_strings = nstrings;

 if (we_read_fully(pdes[0], we->we_strings + sofs, nbytes) != nbytes) {
  error = WRDE_NOSPACE;
  serrno = errno;
  goto cleanup;
 }

 error = 0;
cleanup:
 _close(pdes[0]);
 do
  wpid = _waitpid(pid, &status, 0);
 while (wpid < 0 && errno == EINTR);
 (void)__libc_sigprocmask(SIG_SETMASK, &oldsigblock, ((void*)0));
 if (error != 0) {
  errno = serrno;
  return (error);
 }
 if (wpid < 0 || !WIFEXITED(status) || WEXITSTATUS(status) != 0)
  return (WRDE_NOSPACE);





 if (vofs == 0 && flags & WRDE_DOOFFS)
  while (vofs < we->we_offs)
   we->we_wordv[vofs++] = ((void*)0);
 p = we->we_strings + sofs;
 while (nwords-- != 0) {
  we->we_wordv[vofs++] = p;
  if ((np = memchr(p, '\0', nbytes)) == ((void*)0))
   return (WRDE_NOSPACE);
  nbytes -= np - p + 1;
  p = np + 1;
 }
 we->we_wordv[vofs] = ((void*)0);

 return (0);
}
