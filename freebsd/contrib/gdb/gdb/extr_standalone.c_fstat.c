
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;


 int EBADF ;
 int errno ;
 int sourcedesc ;
 int sourcesize ;

fstat (int desc, struct stat *statbuf)
{
  if (desc != sourcedesc)
    {
      errno = EBADF;
      return -1;
    }
  statbuf->st_size = sourcesize;
}
