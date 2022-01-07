
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
typedef int socklen_t ;
struct TYPE_2__ {int (* getsockname ) (int,struct sockaddr*,int *) ;} ;


 scalar_t__ fd_get (int,int*) ;
 scalar_t__ fd_rsocket ;
 int init_preload () ;
 TYPE_1__ real ;
 int rgetsockname (int,struct sockaddr*,int *) ;
 int stub1 (int,struct sockaddr*,int *) ;

int getsockname(int socket, struct sockaddr *addr, socklen_t *addrlen)
{
 int fd;
 init_preload();
 return (fd_get(socket, &fd) == fd_rsocket) ?
  rgetsockname(fd, addr, addrlen) :
  real.getsockname(fd, addr, addrlen);
}
