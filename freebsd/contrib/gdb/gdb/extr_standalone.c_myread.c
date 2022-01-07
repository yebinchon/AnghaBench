
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBADF ;
 int errno ;
 int memcpy (char*,int ,int) ;
 int min (int,int) ;
 int sourcedesc ;
 int sourceleft ;
 int sourceptr ;

myread (int desc, char *destptr, int size, char *filename)
{
  int len = min (sourceleft, size);

  if (desc != sourcedesc)
    {
      errno = EBADF;
      return -1;
    }

  memcpy (destptr, sourceptr, len);
  sourceleft -= len;
  return len;
}
