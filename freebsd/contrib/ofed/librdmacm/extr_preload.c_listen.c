
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* listen ) (int,int) ;} ;


 scalar_t__ fd_fork ;
 int fd_fork_listen ;
 scalar_t__ fd_get (int,int*) ;
 scalar_t__ fd_gets (int) ;
 int fd_normal ;
 scalar_t__ fd_rsocket ;
 int fd_store (int,int,int ,int ) ;
 TYPE_1__ real ;
 int rlisten (int,int) ;
 int stub1 (int,int) ;

int listen(int socket, int backlog)
{
 int fd, ret;
 if (fd_get(socket, &fd) == fd_rsocket) {
  ret = rlisten(fd, backlog);
 } else {
  ret = real.listen(fd, backlog);
  if (!ret && fd_gets(socket) == fd_fork)
   fd_store(socket, fd, fd_normal, fd_fork_listen);
 }
 return ret;
}
