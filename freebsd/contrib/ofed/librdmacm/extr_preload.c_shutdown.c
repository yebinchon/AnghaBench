
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* shutdown ) (int,int) ;} ;


 scalar_t__ fd_get (int,int*) ;
 scalar_t__ fd_rsocket ;
 TYPE_1__ real ;
 int rshutdown (int,int) ;
 int stub1 (int,int) ;

int shutdown(int socket, int how)
{
 int fd;
 return (fd_get(socket, &fd) == fd_rsocket) ?
  rshutdown(fd, how) : real.shutdown(fd, how);
}
