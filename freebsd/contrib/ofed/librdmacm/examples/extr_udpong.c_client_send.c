
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int events; int fd; } ;
struct message {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ EAGAIN ;
 scalar_t__ EWOULDBLOCK ;
 int POLLOUT ;
 int do_poll (struct pollfd*,int ) ;
 scalar_t__ errno ;
 int flags ;
 int perror (char*) ;
 int poll_timeout ;
 int rs ;
 int rs_send (int ,struct message*,size_t,int ) ;
 scalar_t__ use_async ;

__attribute__((used)) static ssize_t client_send(struct message *msg, size_t size)
{
 struct pollfd fds;
 int ret;

 if (use_async) {
  fds.fd = rs;
  fds.events = POLLOUT;
 }

 do {
  if (use_async) {
   ret = do_poll(&fds, poll_timeout);
   if (ret)
    return ret;
  }

  ret = rs_send(rs, msg, size, flags);
 } while (ret < 0 && (errno == EWOULDBLOCK || errno == EAGAIN));

 if (ret < 0)
  perror("rsend");

 return ret;
}
