
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int socklen_t ;
struct TYPE_2__ {int (* getsockopt ) (int,int,int,void*,int *) ;} ;


 scalar_t__ fd_get (int,int*) ;
 scalar_t__ fd_rsocket ;
 TYPE_1__ real ;
 int rgetsockopt (int,int,int,void*,int *) ;
 int stub1 (int,int,int,void*,int *) ;

int getsockopt(int socket, int level, int optname,
  void *optval, socklen_t *optlen)
{
 int fd;
 return (fd_get(socket, &fd) == fd_rsocket) ?
  rgetsockopt(fd, level, optname, optval, optlen) :
  real.getsockopt(fd, level, optname, optval, optlen);
}
