
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thetime ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct sockaddr_in {int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct servent {int s_port; } ;
typedef int socklen_t ;
typedef int from ;
typedef int fd_set ;


 int AF_INET ;
 scalar_t__ EINTR ;
 scalar_t__ EIO ;
 scalar_t__ ETIMEDOUT ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 scalar_t__ TOFFSET ;
 scalar_t__ _connect (int,struct sockaddr*,int) ;
 int _read (int,char*,int) ;
 int _recvfrom (int,char*,int,int ,struct sockaddr*,int*) ;
 int _rpc_dtablesize () ;
 int _select (int ,int *,int *,int *,struct timeval*) ;
 int _sendto (int,char*,int,int ,struct sockaddr*,int) ;
 int _socket (int ,int,int ) ;
 int do_close (int) ;
 scalar_t__ errno ;
 struct servent* getservbyname (char*,char*) ;
 unsigned long ntohl (unsigned long) ;

int
rtime(struct sockaddr_in *addrp, struct timeval *timep,
    struct timeval *timeout)
{
 int s;
 fd_set readfds;
 int res;
 unsigned long thetime;
 struct sockaddr_in from;
 socklen_t fromlen;
 int type;
 struct servent *serv;

 if (timeout == ((void*)0)) {
  type = SOCK_STREAM;
 } else {
  type = SOCK_DGRAM;
 }
 s = _socket(AF_INET, type, 0);
 if (s < 0) {
  return(-1);
 }
 addrp->sin_family = AF_INET;


 if ((serv = getservbyname("time", "tcp")) == ((void*)0)) {
  return(-1);
 }

 addrp->sin_port = serv->s_port;

 if (type == SOCK_DGRAM) {
  res = _sendto(s, (char *)&thetime, sizeof(thetime), 0,
        (struct sockaddr *)addrp, sizeof(*addrp));
  if (res < 0) {
   do_close(s);
   return(-1);
  }
  do {
   FD_ZERO(&readfds);
   FD_SET(s, &readfds);
   res = _select(_rpc_dtablesize(), &readfds,
         (fd_set *)((void*)0), (fd_set *)((void*)0), timeout);
  } while (res < 0 && errno == EINTR);
  if (res <= 0) {
   if (res == 0) {
    errno = ETIMEDOUT;
   }
   do_close(s);
   return(-1);
  }
  fromlen = sizeof(from);
  res = _recvfrom(s, (char *)&thetime, sizeof(thetime), 0,
          (struct sockaddr *)&from, &fromlen);
  do_close(s);
  if (res < 0) {
   return(-1);
  }
 } else {
  if (_connect(s, (struct sockaddr *)addrp, sizeof(*addrp)) < 0) {
   do_close(s);
   return(-1);
  }
  res = _read(s, (char *)&thetime, sizeof(thetime));
  do_close(s);
  if (res < 0) {
   return(-1);
  }
 }
 if (res != sizeof(thetime)) {
  errno = EIO;
  return(-1);
 }
 thetime = ntohl(thetime);
 timep->tv_sec = thetime - TOFFSET;
 timep->tv_usec = 0;
 return(0);
}
