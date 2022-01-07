
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsocket {int fd_flags; } ;


 int MSG_DONTWAIT ;
 int O_NONBLOCK ;

__attribute__((used)) static int rs_nonblocking(struct rsocket *rs, int flags)
{
 return (rs->fd_flags & O_NONBLOCK) || (flags & MSG_DONTWAIT);
}
