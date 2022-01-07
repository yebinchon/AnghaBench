
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;





 int EIO ;
 scalar_t__ GETRANDOM_FIRST ;
 scalar_t__ __getosreldate () ;
 int _getentropy_fail () ;
 int errno ;
 int getentropy_fallback (void*,size_t) ;
 int getrandom (void*,size_t,int ) ;

int
getentropy(void *buf, size_t buflen)
{
 ssize_t rd;
 bool have_getrandom;

 if (buflen > 256) {
  errno = EIO;
  return (-1);
 }

 have_getrandom = (__getosreldate() >= GETRANDOM_FIRST);

 while (buflen > 0) {
  if (have_getrandom) {
   rd = getrandom(buf, buflen, 0);
   if (rd == -1) {
    switch (errno) {
    case 130:







     have_getrandom = 0;
     continue;
    case 128:
     continue;
    case 129:
     return (-1);
    default:
     _getentropy_fail();
    }
   }
  } else {
   return (getentropy_fallback(buf, buflen));
  }


  if (rd == 0)
   _getentropy_fail();

  buf = (char *)buf + rd;
  buflen -= rd;
 }

 return (0);
}
