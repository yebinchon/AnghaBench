
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int wint_t ;
typedef int wchar_t ;
typedef int locale_t ;
struct TYPE_9__ {size_t _size; scalar_t__ _base; } ;
struct TYPE_10__ {int _flags; TYPE_1__ _lb; } ;
typedef TYPE_2__ FILE ;


 int FIX_LOCALE (int ) ;
 int FLOCKFILE_CANCELSAFE (TYPE_2__*) ;
 int FUNLOCKFILE_CANCELSAFE () ;
 size_t GROW ;
 int ORIENT (TYPE_2__*,int) ;
 int WEOF ;
 int __SERR ;
 int __fgetwc (TYPE_2__*,int ) ;
 scalar_t__ __sferror (TYPE_2__*) ;
 scalar_t__ __slbexpand (TYPE_2__*,size_t) ;

wchar_t *
fgetwln_l(FILE * __restrict fp, size_t *lenp, locale_t locale)
{
 wchar_t *ret;
 wint_t wc;
 size_t len;
 int savserr;

 FIX_LOCALE(locale);

 FLOCKFILE_CANCELSAFE(fp);
 ORIENT(fp, 1);

 savserr = fp->_flags & __SERR;
 fp->_flags &= ~__SERR;

 len = 0;
 while ((wc = __fgetwc(fp, locale)) != WEOF) {

  if (len * sizeof(wchar_t) >= fp->_lb._size &&
      __slbexpand(fp, (len + 512) * sizeof(wchar_t))) {
   fp->_flags |= __SERR;
   goto error;
  }
  *((wchar_t *)fp->_lb._base + len++) = wc;
  if (wc == L'\n')
   break;
 }

 if (__sferror(fp))
  goto error;

 fp->_flags |= savserr;
 if (len == 0)
  goto error;

 *lenp = len;
 ret = (wchar_t *)fp->_lb._base;
end:
 FUNLOCKFILE_CANCELSAFE();
 return (ret);

error:
 *lenp = 0;
 ret = ((void*)0);
 goto end;
}
