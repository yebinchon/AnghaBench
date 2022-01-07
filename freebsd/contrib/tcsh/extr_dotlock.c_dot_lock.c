
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;
typedef int path ;


 scalar_t__ EEXIST ;
 int MAXPATHLEN ;
 int SIGCHLD ;
 int SIGHUP ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGTERM ;
 int SIGTSTP ;
 int SIGTTIN ;
 int SIGTTOU ;
 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int create_exclusive (char*) ;
 scalar_t__ errno ;
 int handle_pending_signals () ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 int snprintf (char*,int,char*,char const*) ;
 int usleep (unsigned int) ;

int
dot_lock(const char *fname, int pollinterval)
{
 char path[MAXPATHLEN];
 sigset_t nset, oset;
 int retval;

 (void)sigemptyset(&nset);
 (void)sigaddset(&nset, SIGHUP);
 (void)sigaddset(&nset, SIGINT);
 (void)sigaddset(&nset, SIGQUIT);
 (void)sigaddset(&nset, SIGTERM);
 (void)sigaddset(&nset, SIGTTIN);
 (void)sigaddset(&nset, SIGTTOU);
 (void)sigaddset(&nset, SIGTSTP);
 (void)sigaddset(&nset, SIGCHLD);

 (void)snprintf(path, sizeof(path), "%s.lock", fname);

 retval = -1;
 for (;;) {
  handle_pending_signals();
  (void)sigprocmask(SIG_BLOCK, &nset, &oset);
  if (create_exclusive(path) != -1) {
   (void)sigprocmask(SIG_SETMASK, &oset, ((void*)0));
   retval = 0;
   break;
  }
  else
   (void)sigprocmask(SIG_SETMASK, &oset, ((void*)0));

  if (errno != EEXIST)
   break;

  if (pollinterval) {
   if (pollinterval == -1) {
    errno = EEXIST;
    break;
   }
   (void)usleep((unsigned int)pollinterval * 1000);
  }
 }
 handle_pending_signals();
 return retval;
}
