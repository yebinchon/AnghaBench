
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
struct xlocale_ctype {size_t (* __wcsnrtombs ) (char*,int const**,int ,int,int *) ;} ;
struct __suio {int uio_iovcnt; size_t uio_resid; struct __siov* uio_iov; } ;
struct __siov {char* iov_base; size_t iov_len; } ;
typedef int locale_t ;
typedef int buf ;
struct TYPE_7__ {int _mbstate; } ;
typedef TYPE_1__ FILE ;


 int BUFSIZ ;
 int FIX_LOCALE (int ) ;
 int FLOCKFILE_CANCELSAFE (TYPE_1__*) ;
 int FUNLOCKFILE_CANCELSAFE () ;
 int ORIENT (TYPE_1__*,int) ;
 int SIZE_T_MAX ;
 struct xlocale_ctype* XLOCALE_CTYPE (int ) ;
 scalar_t__ __sfvwrite (TYPE_1__*,struct __suio*) ;
 scalar_t__ prepwrite (TYPE_1__*) ;
 size_t stub1 (char*,int const**,int ,int,int *) ;

int
fputws_l(const wchar_t * __restrict ws, FILE * __restrict fp, locale_t locale)
{
 size_t nbytes;
 char buf[BUFSIZ];
 struct __suio uio;
 struct __siov iov;
 const wchar_t *wsp;
 FIX_LOCALE(locale);
 struct xlocale_ctype *l = XLOCALE_CTYPE(locale);
 int ret;

 ret = -1;
 FLOCKFILE_CANCELSAFE(fp);
 ORIENT(fp, 1);
 if (prepwrite(fp) != 0)
  goto end;
 uio.uio_iov = &iov;
 uio.uio_iovcnt = 1;
 iov.iov_base = buf;
 wsp = ws;
 do {
  nbytes = l->__wcsnrtombs(buf, &wsp, SIZE_T_MAX, sizeof(buf),
      &fp->_mbstate);
  if (nbytes == (size_t)-1)
   goto end;
  uio.uio_resid = iov.iov_len = nbytes;
  if (__sfvwrite(fp, &uio) != 0)
   goto end;
 } while (wsp != ((void*)0));
 ret = 0;
end:
 FUNLOCKFILE_CANCELSAFE();
 return (ret);
}
