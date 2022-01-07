
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_2__ {int (* fxstat ) (int,int,struct stat*) ;} ;


 int S_IFMT ;
 int __S_IFSOCK ;
 scalar_t__ fd_get (int,int*) ;
 scalar_t__ fd_rsocket ;
 int init_preload () ;
 TYPE_1__ real ;
 int stub1 (int,int,struct stat*) ;
 int stub2 (int,int,struct stat*) ;

int __fxstat(int ver, int socket, struct stat *buf)
{
 int fd, ret;

 init_preload();
 if (fd_get(socket, &fd) == fd_rsocket) {
  ret = real.fxstat(ver, socket, buf);
  if (!ret)
   buf->st_mode = (buf->st_mode & ~S_IFMT) | __S_IFSOCK;
 } else {
  ret = real.fxstat(ver, fd, buf);
 }
 return ret;
}
