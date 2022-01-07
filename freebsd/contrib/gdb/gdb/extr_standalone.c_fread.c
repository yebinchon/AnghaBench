
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBADF ;
 int errno ;
 int memcpy (int,int ,int) ;
 int min (int,int) ;
 int sourcedesc ;
 int sourceleft ;
 int sourceptr ;

int
fread (int bufp, int numelts, int eltsize, int stream)
{
  int elts = min (numelts, sourceleft / eltsize);
  int len = elts * eltsize;

  if (stream != sourcedesc)
    {
      errno = EBADF;
      return -1;
    }

  memcpy (bufp, sourceptr, len);
  sourceleft -= len;
  return elts;
}
