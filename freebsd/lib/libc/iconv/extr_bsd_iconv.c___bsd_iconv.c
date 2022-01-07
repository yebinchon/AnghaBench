
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_iconv {int dummy; } ;
typedef scalar_t__ iconv_t ;


 int EBADF ;
 scalar_t__ ISBADF (scalar_t__) ;
 int _citrus_iconv_convert (struct _citrus_iconv*,char**,size_t*,char**,size_t*,int ,size_t*) ;
 int errno ;

size_t
__bsd_iconv(iconv_t handle, char **in, size_t *szin, char **out, size_t *szout)
{
 size_t ret;
 int err;

 if (ISBADF(handle)) {
  errno = EBADF;
  return ((size_t)-1);
 }

 err = _citrus_iconv_convert((struct _citrus_iconv *)(void *)handle,
     in, szin, out, szout, 0, &ret);
 if (err) {
  errno = err;
  ret = (size_t)-1;
 }

 return (ret);
}
