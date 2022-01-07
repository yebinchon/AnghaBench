
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int socklen_t ;
struct TYPE_2__ {int (* setsockopt ) (int,int,int,void const*,int ) ;} ;


 scalar_t__ fd_get (int,int*) ;
 scalar_t__ fd_rsocket ;
 TYPE_1__ real ;
 int rsetsockopt (int,int,int,void const*,int ) ;
 int stub1 (int,int,int,void const*,int ) ;

int setsockopt(int socket, int level, int optname,
  const void *optval, socklen_t optlen)
{
 int fd;
 return (fd_get(socket, &fd) == fd_rsocket) ?
  rsetsockopt(fd, level, optname, optval, optlen) :
  real.setsockopt(fd, level, optname, optval, optlen);
}
