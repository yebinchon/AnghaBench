
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
typedef int socklen_t ;
struct TYPE_2__ {int (* bind ) (int,struct sockaddr const*,int ) ;} ;


 scalar_t__ fd_get (int,int*) ;
 scalar_t__ fd_rsocket ;
 int rbind (int,struct sockaddr const*,int ) ;
 TYPE_1__ real ;
 int stub1 (int,struct sockaddr const*,int ) ;

int bind(int socket, const struct sockaddr *addr, socklen_t addrlen)
{
 int fd;
 return (fd_get(socket, &fd) == fd_rsocket) ?
  rbind(fd, addr, addrlen) : real.bind(fd, addr, addrlen);
}
