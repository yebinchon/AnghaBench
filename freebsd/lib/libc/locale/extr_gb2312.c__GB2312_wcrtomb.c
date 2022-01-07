
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
typedef int mbstate_t ;
struct TYPE_2__ {scalar_t__ count; } ;
typedef TYPE_1__ _GB2312State ;


 int EINVAL ;
 int errno ;

__attribute__((used)) static size_t
_GB2312_wcrtomb(char * __restrict s, wchar_t wc, mbstate_t * __restrict ps)
{
 _GB2312State *gs;

 gs = (_GB2312State *)ps;

 if (gs->count != 0) {
  errno = EINVAL;
  return ((size_t)-1);
 }

 if (s == ((void*)0))

  return (1);
 if (wc & 0x8000) {
  *s++ = (wc >> 8) & 0xff;
  *s = wc & 0xff;
  return (2);
 }
 *s = wc & 0xff;
 return (1);
}
