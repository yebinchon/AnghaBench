
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union socket_addr {int sa; } ;
struct pollfd {int events; int fd; } ;
struct message {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int socklen_t ;


 scalar_t__ EAGAIN ;
 scalar_t__ EWOULDBLOCK ;
 int POLLOUT ;
 scalar_t__ do_poll (struct pollfd*,int ) ;
 scalar_t__ errno ;
 int flags ;
 int perror (char*) ;
 int poll_timeout ;
 int rs ;
 scalar_t__ rs_sendto (int ,struct message*,size_t,int ,int *,int ) ;
 scalar_t__ use_async ;

__attribute__((used)) static ssize_t svr_send(struct message *msg, size_t size,
   union socket_addr *addr, socklen_t addrlen)
{
 struct pollfd fds;
 ssize_t ret;

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

  ret = rs_sendto(rs, msg, size, flags, &addr->sa, addrlen);
 } while (ret < 0 && (errno == EWOULDBLOCK || errno == EAGAIN));

 if (ret < 0)
  perror("rsend");

 return ret;
}
