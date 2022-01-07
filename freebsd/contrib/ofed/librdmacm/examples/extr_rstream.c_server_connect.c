
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int events; scalar_t__ fd; } ;


 scalar_t__ EAGAIN ;
 scalar_t__ EWOULDBLOCK ;
 int POLLIN ;
 int do_poll (struct pollfd*,int ) ;
 scalar_t__ errno ;
 int fork () ;
 int fork_pid ;
 scalar_t__ lrs ;
 int perror (char*) ;
 int poll_timeout ;
 scalar_t__ rs ;
 scalar_t__ rs_accept (scalar_t__,int *,int *) ;
 int set_options (scalar_t__) ;
 scalar_t__ use_async ;
 scalar_t__ use_fork ;

__attribute__((used)) static int server_connect(void)
{
 struct pollfd fds;
 int ret = 0;

 set_options(lrs);
 do {
  if (use_async) {
   fds.fd = lrs;
   fds.events = POLLIN;

   ret = do_poll(&fds, poll_timeout);
   if (ret) {
    perror("rpoll");
    return ret;
   }
  }

  rs = rs_accept(lrs, ((void*)0), ((void*)0));
 } while (rs < 0 && (errno == EAGAIN || errno == EWOULDBLOCK));
 if (rs < 0) {
  perror("raccept");
  return rs;
 }

 if (use_fork)
  fork_pid = fork();
 if (!fork_pid)
  set_options(rs);
 return ret;
}
