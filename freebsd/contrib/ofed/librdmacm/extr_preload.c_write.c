
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_2__ {int (* write ) (int,void const*,size_t) ;} ;


 scalar_t__ fd_fork_get (int,int*) ;
 scalar_t__ fd_rsocket ;
 int init_preload () ;
 TYPE_1__ real ;
 int rwrite (int,void const*,size_t) ;
 int stub1 (int,void const*,size_t) ;

ssize_t write(int socket, const void *buf, size_t count)
{
 int fd;
 init_preload();
 return (fd_fork_get(socket, &fd) == fd_rsocket) ?
  rwrite(fd, buf, count) : real.write(fd, buf, count);
}
