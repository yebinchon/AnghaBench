
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_2__ {int (* read ) (int,void*,size_t) ;} ;


 scalar_t__ fd_fork_get (int,int*) ;
 scalar_t__ fd_rsocket ;
 int init_preload () ;
 TYPE_1__ real ;
 int rread (int,void*,size_t) ;
 int stub1 (int,void*,size_t) ;

ssize_t read(int socket, void *buf, size_t count)
{
 int fd;
 init_preload();
 return (fd_fork_get(socket, &fd) == fd_rsocket) ?
  rread(fd, buf, count) : real.read(fd, buf, count);
}
