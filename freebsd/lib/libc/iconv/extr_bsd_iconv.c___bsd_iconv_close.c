
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_iconv {int dummy; } ;
typedef scalar_t__ iconv_t ;


 int EBADF ;
 scalar_t__ ISBADF (scalar_t__) ;
 int _citrus_iconv_close (struct _citrus_iconv*) ;
 int errno ;

int
__bsd_iconv_close(iconv_t handle)
{

 if (ISBADF(handle)) {
  errno = EBADF;
  return (-1);
 }

 _citrus_iconv_close((struct _citrus_iconv *)(void *)handle);

 return (0);
}
