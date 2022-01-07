
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iovec {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* writev ) (int,struct iovec const*,int) ;} ;


 scalar_t__ fd_fork_get (int,int*) ;
 scalar_t__ fd_rsocket ;
 int init_preload () ;
 TYPE_1__ real ;
 int rwritev (int,struct iovec const*,int) ;
 int stub1 (int,struct iovec const*,int) ;

ssize_t writev(int socket, const struct iovec *iov, int iovcnt)
{
 int fd;
 init_preload();
 return (fd_fork_get(socket, &fd) == fd_rsocket) ?
  rwritev(fd, iov, iovcnt) : real.writev(fd, iov, iovcnt);
}
