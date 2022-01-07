
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD_CLOEXEC ;
 int F_SETFD ;
 int close (int) ;
 int errno ;
 int error (char*,int ) ;
 int fcntl (int,int ,int ) ;
 int* notify_pipe ;
 scalar_t__ pipe (int*) ;
 int set_nonblock (int) ;
 int strerror (int ) ;

__attribute__((used)) static void
notify_setup(void)
{
 if (pipe(notify_pipe) < 0) {
  error("pipe(notify_pipe) failed %s", strerror(errno));
 } else if ((fcntl(notify_pipe[0], F_SETFD, FD_CLOEXEC) == -1) ||
     (fcntl(notify_pipe[1], F_SETFD, FD_CLOEXEC) == -1)) {
  error("fcntl(notify_pipe, F_SETFD) failed %s", strerror(errno));
  close(notify_pipe[0]);
  close(notify_pipe[1]);
 } else {
  set_nonblock(notify_pipe[0]);
  set_nonblock(notify_pipe[1]);
  return;
 }
 notify_pipe[0] = -1;
 notify_pipe[1] = -1;
}
