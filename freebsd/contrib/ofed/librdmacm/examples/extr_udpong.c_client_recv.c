
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int events; int fd; } ;
struct message {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ EAGAIN ;
 scalar_t__ EWOULDBLOCK ;
 int MSG_DONTWAIT ;
 int POLLIN ;
 scalar_t__ errno ;
 int flags ;
 int perror (char*) ;
 int rs ;
 int rs_poll (struct pollfd*,int,int) ;
 int rs_recv (int ,struct message*,size_t,int) ;

__attribute__((used)) static ssize_t client_recv(struct message *msg, size_t size, int timeout)
{
 struct pollfd fds;
 int ret;

 if (timeout) {
  fds.fd = rs;
  fds.events = POLLIN;

  ret = rs_poll(&fds, 1, timeout);
  if (ret <= 0)
   return ret;
 }

 ret = rs_recv(rs, msg, size, flags | MSG_DONTWAIT);
 if (ret < 0 && errno != EWOULDBLOCK && errno != EAGAIN)
  perror("rrecv");

 return ret;
}
