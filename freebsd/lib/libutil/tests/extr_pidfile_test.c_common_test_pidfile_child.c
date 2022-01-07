
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pidfh {int dummy; } ;
struct kevent {int dummy; } ;
typedef int pid_t ;


 int EVFILT_SIGNAL ;
 int EV_ADD ;
 int EV_SET (struct kevent*,int ,int ,int ,int ,int ,int *) ;
 int SIGINT ;
 int SIGTERM ;
 scalar_t__ WEXITSTATUS (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int _exit (int) ;
 int close (int) ;
 int errno ;
 int fork () ;
 int kevent (int,struct kevent*,int,struct kevent*,int,int *) ;
 scalar_t__ kill (int,int ) ;
 int kqueue () ;
 int pidfile_close (struct pidfh*) ;
 struct pidfh* pidfile_open (char const*,int,int*) ;
 scalar_t__ pidfile_write (struct pidfh*) ;
 scalar_t__ pipe (int*) ;
 int read (int,char*,int) ;
 int signal (int ,int ) ;
 int signal_handler ;
 char const* strerror (int) ;
 int unlink (char const*) ;
 int waitpid (int,int*,int ) ;
 int write (int,char*,int) ;

__attribute__((used)) static const char *
common_test_pidfile_child(const char *fn, int parent_open)
{
 struct pidfh *pf = ((void*)0);
 pid_t other = 0, pid = 0;
 int fd[2], serrno, status;
 struct kevent event, ke;
 char ch;
 int kq;

 unlink(fn);
 if (pipe(fd) != 0)
  return (strerror(errno));

 if (parent_open) {
  pf = pidfile_open(fn, 0600, &other);
  if (pf == ((void*)0) && other != 0)
   return ("pidfile exists and is locked");
  if (pf == ((void*)0))
   return (strerror(errno));
 }

 pid = fork();
 if (pid == -1)
  return (strerror(errno));
 if (pid == 0) {

  close(fd[0]);
  signal(SIGINT, signal_handler);
  if (!parent_open) {
   pf = pidfile_open(fn, 0600, &other);
   if (pf == ((void*)0) && other != 0)
    return ("pidfile exists and is locked");
   if (pf == ((void*)0))
    return (strerror(errno));
  }
  if (pidfile_write(pf) != 0) {
   serrno = errno;
   pidfile_close(pf);
   unlink(fn);
   return (strerror(serrno));
  }
  if (pf == ((void*)0))
   _exit(1);
  if (pidfile_write(pf) != 0)
   _exit(2);
  kq = kqueue();
  if (kq == -1)
   _exit(3);
  EV_SET(&ke, SIGINT, EVFILT_SIGNAL, EV_ADD, 0, 0, ((void*)0));

  if (kevent(kq, &ke, 1, ((void*)0), 0, ((void*)0)) != 0)
   _exit(4);

  if (write(fd[1], "*", 1) != 1)
   _exit(5);

  if (kevent(kq, ((void*)0), 0, &event, 1, ((void*)0)) != 1)
   _exit(6);
  _exit(0);
 }

 close(fd[1]);
 if (pf)
  pidfile_close(pf);


 if (read(fd[0], &ch, 1) != 1) {
  serrno = errno;
  unlink(fn);
  kill(pid, SIGTERM);
  errno = serrno;
  return (strerror(errno));
 }


 pf = pidfile_open(fn, 0600, &other);
 if (pf != ((void*)0)) {
  pidfile_close(pf);
  unlink(fn);
  return ("managed to lock contested pidfile");
 }


 if (other == 0) {
  unlink(fn);
  return (strerror(errno));
 }


 if (other != pid) {
  unlink(fn);
  return ("pidfile contained wrong PID");
 }


 if (pf)
  pidfile_close(pf);
 unlink(fn);
 if (kill(pid, SIGINT) != 0)
  return (strerror(errno));
 if (waitpid(pid, &status, 0) == -1)
  return (strerror(errno));
 if (WIFSIGNALED(status))
  return ("child caught signal");
 if (WEXITSTATUS(status) != 0)
  return ("child returned non-zero status");


 return (((void*)0));
}
