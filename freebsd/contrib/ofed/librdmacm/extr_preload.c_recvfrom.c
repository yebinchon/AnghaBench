
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
typedef int ssize_t ;
typedef int socklen_t ;
struct TYPE_2__ {int (* recvfrom ) (int,void*,size_t,int,struct sockaddr*,int *) ;} ;


 scalar_t__ fd_fork_get (int,int*) ;
 scalar_t__ fd_rsocket ;
 TYPE_1__ real ;
 int rrecvfrom (int,void*,size_t,int,struct sockaddr*,int *) ;
 int stub1 (int,void*,size_t,int,struct sockaddr*,int *) ;

ssize_t recvfrom(int socket, void *buf, size_t len, int flags,
   struct sockaddr *src_addr, socklen_t *addrlen)
{
 int fd;
 return (fd_fork_get(socket, &fd) == fd_rsocket) ?
  rrecvfrom(fd, buf, len, flags, src_addr, addrlen) :
  real.recvfrom(fd, buf, len, flags, src_addr, addrlen);
}
