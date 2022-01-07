
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int wint_t ;
typedef scalar_t__ wchar_t ;
struct __suio {size_t uio_resid; int uio_iovcnt; struct __siov* uio_iov; } ;
struct __siov {char* iov_base; size_t iov_len; } ;
typedef int mbstate_t ;
typedef int locale_t ;
struct TYPE_5__ {int _flags; } ;
typedef TYPE_1__ FILE ;


 scalar_t__ EOF ;
 int MB_LEN_MAX ;
 int WEOF ;
 int __SERR ;
 int __SSTR ;
 int __fputwc (scalar_t__,TYPE_1__*,int ) ;
 scalar_t__ __sfvwrite (TYPE_1__*,struct __suio*) ;
 int initial_mbs ;
 size_t wcrtomb (char*,scalar_t__,int *) ;

__attribute__((used)) static wint_t
__xfputwc(wchar_t wc, FILE *fp, locale_t locale)
{
 mbstate_t mbs;
 char buf[MB_LEN_MAX];
 struct __suio uio;
 struct __siov iov;
 size_t len;

 if ((fp->_flags & __SSTR) == 0)
  return (__fputwc(wc, fp, locale));

 mbs = initial_mbs;
 if ((len = wcrtomb(buf, wc, &mbs)) == (size_t)-1) {
  fp->_flags |= __SERR;
  return (WEOF);
 }
 uio.uio_iov = &iov;
 uio.uio_resid = len;
 uio.uio_iovcnt = 1;
 iov.iov_base = buf;
 iov.iov_len = len;
 return (__sfvwrite(fp, &uio) != EOF ? (wint_t)wc : WEOF);
}
