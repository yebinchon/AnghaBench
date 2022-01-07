
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int EIO ;
 int pwrite (int,void*,int,int ) ;

__attribute__((used)) static int
use_pwrite(void *devfd, off_t loc, void *buf, int size)
{
 int fd;

 fd = *(int *)devfd;
 if (pwrite(fd, buf, size, loc) != size)
  return (EIO);
 return (0);
}
