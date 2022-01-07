
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
typedef int uint8_t ;
struct TYPE_4__ {int chlen; int* ch; } ;
typedef TYPE_1__ _UTF8State ;
typedef int _UTF8EncodingInfo ;


 int EILSEQ ;
 int* _UTF8_count ;
 int _UTF8_findlen (int) ;
 scalar_t__ _UTF8_surrogate (int) ;
 int _citrus_UTF8_init_state (int *,TYPE_1__*) ;

__attribute__((used)) static int
_citrus_UTF8_mbrtowc_priv(_UTF8EncodingInfo *ei, wchar_t *pwc, char **s,
    size_t n, _UTF8State *psenc, size_t *nresult)
{
 char *s0;
 wchar_t wchar;
 int i;
 uint8_t c;

 s0 = *s;

 if (s0 == ((void*)0)) {
  _citrus_UTF8_init_state(ei, psenc);
  *nresult = 0;
  return (0);
 }


 if (psenc->chlen == 0) {
  if (n-- < 1)
   goto restart;
  psenc->ch[psenc->chlen++] = *s0++;
 }

 c = _UTF8_count[psenc->ch[0] & 0xff];
 if (c < 1 || c < psenc->chlen)
  goto ilseq;

 if (c == 1)
  wchar = psenc->ch[0] & 0xff;
 else {
  while (psenc->chlen < c) {
   if (n-- < 1)
    goto restart;
   psenc->ch[psenc->chlen++] = *s0++;
  }
  wchar = psenc->ch[0] & (0x7f >> c);
  for (i = 1; i < c; i++) {
   if ((psenc->ch[i] & 0xc0) != 0x80)
    goto ilseq;
   wchar <<= 6;
   wchar |= (psenc->ch[i] & 0x3f);
  }
  if (_UTF8_surrogate(wchar) || _UTF8_findlen(wchar) != c)
   goto ilseq;
 }
 if (pwc != ((void*)0))
  *pwc = wchar;
 *nresult = (wchar == 0) ? 0 : s0 - *s;
 *s = s0;
 psenc->chlen = 0;

 return (0);

ilseq:
 *nresult = (size_t)-1;
 return (EILSEQ);

restart:
 *s = s0;
 *nresult = (size_t)-2;
 return (0);
}
