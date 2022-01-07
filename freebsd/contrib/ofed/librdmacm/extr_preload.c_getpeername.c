
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
typedef int socklen_t ;
struct TYPE_2__ {int (* getpeername ) (int,struct sockaddr*,int *) ;} ;


 scalar_t__ fd_get (int,int*) ;
 scalar_t__ fd_rsocket ;
 TYPE_1__ real ;
 int rgetpeername (int,struct sockaddr*,int *) ;
 int stub1 (int,struct sockaddr*,int *) ;

int getpeername(int socket, struct sockaddr *addr, socklen_t *addrlen)
{
 int fd;
 return (fd_get(socket, &fd) == fd_rsocket) ?
  rgetpeername(fd, addr, addrlen) :
  real.getpeername(fd, addr, addrlen);
}
