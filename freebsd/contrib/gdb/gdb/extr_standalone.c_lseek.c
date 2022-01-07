
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBADF ;
 int EINVAL ;
 int errno ;
 scalar_t__ sourcebeg ;
 int sourcedesc ;
 int sourceleft ;
 scalar_t__ sourceptr ;
 int sourcesize ;

lseek (int desc, int pos)
{

  if (desc != sourcedesc)
    {
      errno = EBADF;
      return -1;
    }

  if (pos < 0 || pos > sourcesize)
    {
      errno = EINVAL;
      return -1;
    }

  sourceptr = sourcebeg + pos;
  sourceleft = sourcesize - pos;
}
