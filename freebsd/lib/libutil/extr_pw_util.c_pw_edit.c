
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct stat {TYPE_1__ st_mtim; } ;
struct sigaction {scalar_t__ sa_flags; int sa_mask; int sa_handler; } ;
typedef int sigset_t ;


 scalar_t__ EINTR ;
 int SIGCHLD ;
 int SIGINT ;
 int SIGQUIT ;
 int SIG_BLOCK ;
 int SIG_IGN ;
 int SIG_SETMASK ;
 scalar_t__ WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSTOPPED (int) ;
 int WSTOPSIG (int) ;
 int WUNTRACED ;
 char* _PATH_VI ;
 int _exit (scalar_t__) ;
 int editpid ;
 scalar_t__ errno ;
 int execlp (char const*,char const*,int ,char*) ;
 int fork () ;
 char* getenv (char*) ;
 int getgid () ;
 int getuid () ;
 int raise (int ) ;
 int setgid (int ) ;
 int setuid (int ) ;
 int sigaction (int ,struct sigaction*,struct sigaction*) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 int stat (int ,struct stat*) ;
 int tempname ;
 int unlink (int ) ;
 int waitpid (int,int*,int ) ;

int
pw_edit(int notsetuid)
{
 struct sigaction sa, sa_int, sa_quit;
 sigset_t oldsigset, nsigset;
 struct stat st1, st2;
 const char *editor;
 int pstat;

 if ((editor = getenv("EDITOR")) == ((void*)0))
  editor = _PATH_VI;
 if (stat(tempname, &st1) == -1)
  return (-1);
 sa.sa_handler = SIG_IGN;
 sigemptyset(&sa.sa_mask);
 sa.sa_flags = 0;
 sigaction(SIGINT, &sa, &sa_int);
 sigaction(SIGQUIT, &sa, &sa_quit);
 sigemptyset(&nsigset);
 sigaddset(&nsigset, SIGCHLD);
 sigprocmask(SIG_BLOCK, &nsigset, &oldsigset);
 switch ((editpid = fork())) {
 case -1:
  return (-1);
 case 0:
  sigaction(SIGINT, &sa_int, ((void*)0));
  sigaction(SIGQUIT, &sa_quit, ((void*)0));
  sigprocmask(SIG_SETMASK, &oldsigset, ((void*)0));
  if (notsetuid) {
   (void)setgid(getgid());
   (void)setuid(getuid());
  }
  errno = 0;
  execlp(editor, editor, tempname, (char *)((void*)0));
  _exit(errno);
 default:

  break;
 }
 for (;;) {
  if (waitpid(editpid, &pstat, WUNTRACED) == -1) {
   if (errno == EINTR)
    continue;
   unlink(tempname);
   editpid = -1;
   break;
  } else if (WIFSTOPPED(pstat)) {
   raise(WSTOPSIG(pstat));
  } else if (WIFEXITED(pstat) && WEXITSTATUS(pstat) == 0) {
   editpid = -1;
   break;
  } else {
   unlink(tempname);
   editpid = -1;
   break;
  }
 }
 sigaction(SIGINT, &sa_int, ((void*)0));
 sigaction(SIGQUIT, &sa_quit, ((void*)0));
 sigprocmask(SIG_SETMASK, &oldsigset, ((void*)0));
 if (stat(tempname, &st2) == -1)
  return (-1);
 return (st1.st_mtim.tv_sec != st2.st_mtim.tv_sec ||
     st1.st_mtim.tv_nsec != st2.st_mtim.tv_nsec);
}
