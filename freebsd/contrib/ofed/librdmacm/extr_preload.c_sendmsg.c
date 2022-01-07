
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msghdr {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* sendmsg ) (int,struct msghdr const*,int) ;} ;


 scalar_t__ fd_fork_get (int,int*) ;
 scalar_t__ fd_rsocket ;
 TYPE_1__ real ;
 int rsendmsg (int,struct msghdr const*,int) ;
 int stub1 (int,struct msghdr const*,int) ;

ssize_t sendmsg(int socket, const struct msghdr *msg, int flags)
{
 int fd;
 return (fd_fork_get(socket, &fd) == fd_rsocket) ?
  rsendmsg(fd, msg, flags) : real.sendmsg(fd, msg, flags);
}
