
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
typedef int mbstate_t ;
struct TYPE_2__ {scalar_t__ ch; } ;
typedef TYPE_1__ _MSKanjiState ;


 int EINVAL ;
 int errno ;

__attribute__((used)) static size_t
_MSKanji_wcrtomb(char * __restrict s, wchar_t wc, mbstate_t * __restrict ps)
{
 _MSKanjiState *ms;
 int len, i;

 ms = (_MSKanjiState *)ps;

 if (ms->ch != 0) {
  errno = EINVAL;
  return ((size_t)-1);
 }

 if (s == ((void*)0))

  return (1);
 len = (wc > 0x100) ? 2 : 1;
 for (i = len; i-- > 0; )
  *s++ = wc >> (i << 3);
 return (len);
}
