
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t _r; unsigned char* _p; int _flags; } ;
typedef TYPE_1__ FILE ;


 int EINVAL ;
 int FLOCKFILE_CANCELSAFE (TYPE_1__*) ;
 int FUNLOCKFILE_CANCELSAFE () ;
 int ORIENT (TYPE_1__*,int) ;
 int __SERR ;
 int __sfeof (TYPE_1__*) ;
 scalar_t__ __srefill (TYPE_1__*) ;
 int errno ;
 unsigned char* memchr (void*,char,size_t) ;
 int memcpy (void*,void*,size_t) ;

char *
fgets(char * __restrict buf, int n, FILE * __restrict fp)
{
 size_t len;
 char *s, *ret;
 unsigned char *p, *t;

 FLOCKFILE_CANCELSAFE(fp);
 ORIENT(fp, -1);

 if (n <= 0) {
  fp->_flags |= __SERR;
  errno = EINVAL;
  ret = ((void*)0);
  goto end;
 }

 s = buf;
 n--;
 while (n != 0) {



  if ((len = fp->_r) <= 0) {
   if (__srefill(fp)) {

    if (!__sfeof(fp) || s == buf) {
     ret = ((void*)0);
     goto end;
    }
    break;
   }
   len = fp->_r;
  }
  p = fp->_p;







  if (len > n)
   len = n;
  t = memchr((void *)p, '\n', len);
  if (t != ((void*)0)) {
   len = ++t - p;
   fp->_r -= len;
   fp->_p = t;
   (void)memcpy((void *)s, (void *)p, len);
   s[len] = 0;
   ret = buf;
   goto end;
  }
  fp->_r -= len;
  fp->_p += len;
  (void)memcpy((void *)s, (void *)p, len);
  s += len;
  n -= len;
 }
 *s = 0;
 ret = buf;
end:
 FUNLOCKFILE_CANCELSAFE();
 return (ret);
}
