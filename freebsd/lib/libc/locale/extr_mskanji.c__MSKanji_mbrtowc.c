
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
typedef int mbstate_t ;
struct TYPE_2__ {int ch; } ;
typedef TYPE_1__ _MSKanjiState ;


 int EILSEQ ;
 int EINVAL ;
 int errno ;

__attribute__((used)) static size_t
_MSKanji_mbrtowc(wchar_t * __restrict pwc, const char * __restrict s, size_t n,
    mbstate_t * __restrict ps)
{
 _MSKanjiState *ms;
 wchar_t wc;

 ms = (_MSKanjiState *)ps;

 if ((ms->ch & ~0xFF) != 0) {

  errno = EINVAL;
  return ((size_t)-1);
 }

 if (s == ((void*)0)) {
  s = "";
  n = 1;
  pwc = ((void*)0);
 }

 if (n == 0)

  return ((size_t)-2);

 if (ms->ch != 0) {
  if (*s == '\0') {
   errno = EILSEQ;
   return ((size_t)-1);
  }
  wc = (ms->ch << 8) | (*s & 0xFF);
  if (pwc != ((void*)0))
   *pwc = wc;
  ms->ch = 0;
  return (1);
 }
 wc = *s++ & 0xff;
 if ((wc > 0x80 && wc < 0xa0) || (wc >= 0xe0 && wc < 0xfd)) {
  if (n < 2) {

   ms->ch = wc;
   return ((size_t)-2);
  }
  if (*s == '\0') {
   errno = EILSEQ;
   return ((size_t)-1);
  }
  wc = (wc << 8) | (*s++ & 0xff);
  if (pwc != ((void*)0))
   *pwc = wc;
  return (2);
 } else {
  if (pwc != ((void*)0))
   *pwc = wc;
  return (wc == L'\0' ? 0 : 1);
 }
}
