
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
typedef int socklen_t ;
struct TYPE_2__ {int (* connect ) (int,struct sockaddr const*,int ) ;} ;


 scalar_t__ EINPROGRESS ;
 scalar_t__ errno ;
 scalar_t__ fd_fork ;
 int fd_fork_active ;
 scalar_t__ fd_get (int,int*) ;
 scalar_t__ fd_gets (int) ;
 int fd_normal ;
 scalar_t__ fd_rsocket ;
 int fd_store (int,int,int ,int ) ;
 int rclose (int) ;
 int rconnect (int,struct sockaddr const*,int ) ;
 TYPE_1__ real ;
 int stub1 (int,struct sockaddr const*,int ) ;
 int transpose_socket (int,int ) ;

int connect(int socket, const struct sockaddr *addr, socklen_t addrlen)
{
 int fd, ret;

 if (fd_get(socket, &fd) == fd_rsocket) {
  ret = rconnect(fd, addr, addrlen);
  if (!ret || errno == EINPROGRESS)
   return ret;

  ret = transpose_socket(socket, fd_normal);
  if (ret < 0)
   return ret;

  rclose(fd);
  fd = ret;
 } else if (fd_gets(socket) == fd_fork) {
  fd_store(socket, fd, fd_normal, fd_fork_active);
 }

 return real.connect(fd, addr, addrlen);
}
