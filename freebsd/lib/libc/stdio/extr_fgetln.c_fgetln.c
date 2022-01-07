
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ _base; } ;
struct TYPE_10__ {size_t _r; unsigned char* _p; int _flags; TYPE_1__ _lb; } ;
typedef TYPE_2__ FILE ;


 int FLOCKFILE_CANCELSAFE (TYPE_2__*) ;
 int FUNLOCKFILE_CANCELSAFE () ;
 size_t OPTIMISTIC ;
 int ORIENT (TYPE_2__*,int) ;
 int __SERR ;
 int __SMOD ;
 scalar_t__ __sfeof (TYPE_2__*) ;
 scalar_t__ __slbexpand (TYPE_2__*,size_t) ;
 scalar_t__ __srefill (TYPE_2__*) ;
 unsigned char* memchr (void*,char,size_t) ;
 int memcpy (void*,void*,size_t) ;

char *
fgetln(FILE *fp, size_t *lenp)
{
 unsigned char *p;
 char *ret;
 size_t len;
 size_t off;

 FLOCKFILE_CANCELSAFE(fp);
 ORIENT(fp, -1);

 if (fp->_r <= 0 && __srefill(fp)) {
  *lenp = 0;
  ret = ((void*)0);
  goto end;
 }


 if ((p = memchr((void *)fp->_p, '\n', (size_t)fp->_r)) != ((void*)0)) {





  p++;
  ret = (char *)fp->_p;
  *lenp = len = p - fp->_p;
  fp->_flags |= __SMOD;
  fp->_r -= len;
  fp->_p = p;
  goto end;
 }
 for (len = fp->_r, off = 0;; len += fp->_r) {
  size_t diff;






  if (__slbexpand(fp, len + 80))
   goto error;
  (void)memcpy((void *)(fp->_lb._base + off), (void *)fp->_p,
      len - off);
  off = len;
  if (__srefill(fp)) {
   if (__sfeof(fp))
    break;
   goto error;
  }
  if ((p = memchr((void *)fp->_p, '\n', (size_t)fp->_r)) == ((void*)0))
   continue;


  p++;
  diff = p - fp->_p;
  len += diff;
  if (__slbexpand(fp, len))
   goto error;
  (void)memcpy((void *)(fp->_lb._base + off), (void *)fp->_p,
      diff);
  fp->_r -= diff;
  fp->_p = p;
  break;
 }
 *lenp = len;
 ret = (char *)fp->_lb._base;
end:
 FUNLOCKFILE_CANCELSAFE();
 return (ret);

error:
 *lenp = 0;
 fp->_flags |= __SERR;
 ret = ((void*)0);
 goto end;
}
