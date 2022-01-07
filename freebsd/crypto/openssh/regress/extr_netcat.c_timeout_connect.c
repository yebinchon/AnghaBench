
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct pollfd {int fd; int events; } ;
typedef int socklen_t ;
typedef int optval ;


 int EINPROGRESS ;
 int ETIMEDOUT ;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int POLLOUT ;
 int SOL_SOCKET ;
 int SO_ERROR ;
 int connect (int,struct sockaddr const*,int) ;
 int err (int,char*) ;
 int errno ;
 int fcntl (int,int ,int) ;
 int getsockopt (int,int ,int ,int*,int*) ;
 int poll (struct pollfd*,int,int) ;
 int timeout ;

int
timeout_connect(int s, const struct sockaddr *name, socklen_t namelen)
{
 struct pollfd pfd;
 socklen_t optlen;
 int flags = 0, optval;
 int ret;

 if (timeout != -1) {
  flags = fcntl(s, F_GETFL, 0);
  if (fcntl(s, F_SETFL, flags | O_NONBLOCK) == -1)
   err(1, "set non-blocking mode");
 }

 if ((ret = connect(s, name, namelen)) != 0 && errno == EINPROGRESS) {
  pfd.fd = s;
  pfd.events = POLLOUT;
  if ((ret = poll(&pfd, 1, timeout)) == 1) {
   optlen = sizeof(optval);
   if ((ret = getsockopt(s, SOL_SOCKET, SO_ERROR,
       &optval, &optlen)) == 0) {
    errno = optval;
    ret = optval == 0 ? 0 : -1;
   }
  } else if (ret == 0) {
   errno = ETIMEDOUT;
   ret = -1;
  } else
   err(1, "poll failed");
 }

 if (timeout != -1 && fcntl(s, F_SETFL, flags) == -1)
  err(1, "restoring flags");

 return (ret);
}
