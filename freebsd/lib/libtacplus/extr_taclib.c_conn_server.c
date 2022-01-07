
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
struct tac_server {int timeout; int addr; } ;
struct tac_handle {size_t cur_server; int fd; struct tac_server* servers; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int fd_set ;


 int EINPROGRESS ;
 int ENOTCONN ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int F_GETFL ;
 int F_SETFL ;
 int IPPROTO_TCP ;
 int O_NONBLOCK ;
 int PF_INET ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_ERROR ;
 int close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 int errno ;
 int fcntl (int,int ,int) ;
 int generr (struct tac_handle*,char*,...) ;
 scalar_t__ getpeername (int,struct sockaddr*,int*) ;
 int getsockopt (int,int ,int ,int*,int*) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int socket (int ,int ,int ) ;
 int strerror (int) ;

__attribute__((used)) static int
conn_server(struct tac_handle *h)
{
 const struct tac_server *srvp = &h->servers[h->cur_server];
 int flags;

 if ((h->fd = socket(PF_INET, SOCK_STREAM, IPPROTO_TCP)) == -1) {
  generr(h, "Cannot create socket: %s", strerror(errno));
  return -1;
 }
 if ((flags = fcntl(h->fd, F_GETFL, 0)) == -1 ||
     fcntl(h->fd, F_SETFL, flags | O_NONBLOCK) == -1) {
  generr(h, "Cannot set non-blocking mode on socket: %s",
      strerror(errno));
  close(h->fd);
  h->fd = -1;
  return -1;
 }
 if (connect(h->fd, (struct sockaddr *)&srvp->addr,
     sizeof srvp->addr) == 0)
  return 0;

 if (errno == EINPROGRESS) {
  fd_set wfds;
  struct timeval tv;
  int nfds;
  struct sockaddr peer;
  socklen_t errlen, peerlen;
  int err;


  FD_ZERO(&wfds);
  FD_SET(h->fd, &wfds);
  tv.tv_sec = srvp->timeout;
  tv.tv_usec = 0;
  nfds = select(h->fd + 1, ((void*)0), &wfds, ((void*)0), &tv);
  if (nfds == -1) {
   generr(h, "select: %s", strerror(errno));
   close(h->fd);
   h->fd = -1;
   return -1;
  }
  if (nfds == 0) {
   generr(h, "connect: timed out");
   close(h->fd);
   h->fd = -1;
   return -1;
  }


  peerlen = sizeof peer;
  if (getpeername(h->fd, &peer, &peerlen) == 0)
   return 0;

  if (errno != ENOTCONN) {
   generr(h, "getpeername: %s", strerror(errno));
   close(h->fd);
   h->fd = -1;
   return -1;
  }


  errlen = sizeof err;
  getsockopt(h->fd, SOL_SOCKET, SO_ERROR, &err, &errlen);
  errno = err;
 }
 generr(h, "connect: %s", strerror(errno));
 close(h->fd);
 h->fd = -1;
 return -1;
}
