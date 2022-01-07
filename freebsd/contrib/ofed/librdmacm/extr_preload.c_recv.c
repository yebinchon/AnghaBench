
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_2__ {int (* recv ) (int,void*,size_t,int) ;} ;


 scalar_t__ fd_fork_get (int,int*) ;
 scalar_t__ fd_rsocket ;
 TYPE_1__ real ;
 int rrecv (int,void*,size_t,int) ;
 int stub1 (int,void*,size_t,int) ;

ssize_t recv(int socket, void *buf, size_t len, int flags)
{
 int fd;
 return (fd_fork_get(socket, &fd) == fd_rsocket) ?
  rrecv(fd, buf, len, flags) : real.recv(fd, buf, len, flags);
}
