
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
typedef int ssize_t ;
typedef int socklen_t ;
struct TYPE_2__ {int (* sendto ) (int,void const*,size_t,int,struct sockaddr const*,int ) ;} ;


 scalar_t__ fd_fork_get (int,int*) ;
 scalar_t__ fd_rsocket ;
 TYPE_1__ real ;
 int rsendto (int,void const*,size_t,int,struct sockaddr const*,int ) ;
 int stub1 (int,void const*,size_t,int,struct sockaddr const*,int ) ;

ssize_t sendto(int socket, const void *buf, size_t len, int flags,
  const struct sockaddr *dest_addr, socklen_t addrlen)
{
 int fd;
 return (fd_fork_get(socket, &fd) == fd_rsocket) ?
  rsendto(fd, buf, len, flags, dest_addr, addrlen) :
  real.sendto(fd, buf, len, flags, dest_addr, addrlen);
}
