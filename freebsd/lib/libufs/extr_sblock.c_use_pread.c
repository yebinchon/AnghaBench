
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int EIO ;
 int ENOSPC ;
 void* malloc (int) ;
 int pread (int,void*,int,int ) ;

__attribute__((used)) static int
use_pread(void *devfd, off_t loc, void **bufp, int size)
{
 int fd;

 fd = *(int *)devfd;
 if ((*bufp = malloc(size)) == ((void*)0))
  return (ENOSPC);
 if (pread(fd, *bufp, size, loc) != size)
  return (EIO);
 return (0);
}
