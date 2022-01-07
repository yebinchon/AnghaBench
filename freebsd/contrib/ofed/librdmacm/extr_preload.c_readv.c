
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iovec {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* readv ) (int,struct iovec const*,int) ;} ;


 scalar_t__ fd_fork_get (int,int*) ;
 scalar_t__ fd_rsocket ;
 int init_preload () ;
 TYPE_1__ real ;
 int rreadv (int,struct iovec const*,int) ;
 int stub1 (int,struct iovec const*,int) ;

ssize_t readv(int socket, const struct iovec *iov, int iovcnt)
{
 int fd;
 init_preload();
 return (fd_fork_get(socket, &fd) == fd_rsocket) ?
  rreadv(fd, iov, iovcnt) : real.readv(fd, iov, iovcnt);
}
