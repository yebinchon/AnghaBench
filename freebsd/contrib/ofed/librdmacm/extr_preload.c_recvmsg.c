
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msghdr {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* recvmsg ) (int,struct msghdr*,int) ;} ;


 scalar_t__ fd_fork_get (int,int*) ;
 scalar_t__ fd_rsocket ;
 TYPE_1__ real ;
 int rrecvmsg (int,struct msghdr*,int) ;
 int stub1 (int,struct msghdr*,int) ;

ssize_t recvmsg(int socket, struct msghdr *msg, int flags)
{
 int fd;
 return (fd_fork_get(socket, &fd) == fd_rsocket) ?
  rrecvmsg(fd, msg, flags) : real.recvmsg(fd, msg, flags);
}
