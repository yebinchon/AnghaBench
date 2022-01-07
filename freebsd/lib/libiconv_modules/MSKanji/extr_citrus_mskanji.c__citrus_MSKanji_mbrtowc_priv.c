
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {int chlen; int* ch; } ;
typedef TYPE_1__ _MSKanjiState ;
typedef int _MSKanjiEncodingInfo ;


 int EILSEQ ;
 int _citrus_MSKanji_init_state (int *,TYPE_1__*) ;
 scalar_t__ _mskanji1 (int) ;
 int _mskanji2 (int) ;

__attribute__((used)) static int

_citrus_MSKanji_mbrtowc_priv(_MSKanjiEncodingInfo * __restrict ei,
    wchar_t * __restrict pwc, char ** __restrict s, size_t n,
    _MSKanjiState * __restrict psenc, size_t * __restrict nresult)
{
 char *s0;
 wchar_t wchar;
 int chlenbak, len;

 s0 = *s;

 if (s0 == ((void*)0)) {
  _citrus_MSKanji_init_state(ei, psenc);
  *nresult = 0;
  return (0);
 }

 chlenbak = psenc->chlen;


 switch (psenc->chlen) {
 case 0:
  if (n < 1)
   goto restart;
  psenc->ch[0] = *s0++;
  psenc->chlen = 1;
  n--;
  break;
 case 1:
  break;
 default:

  goto encoding_error;
 }

 len = _mskanji1(psenc->ch[0] & 0xff) ? 2 : 1;
 while (psenc->chlen < len) {
  if (n < 1)
   goto restart;
  psenc->ch[psenc->chlen] = *s0++;
  psenc->chlen++;
  n--;
 }

 *s = s0;

 switch (len) {
 case 1:
  wchar = psenc->ch[0] & 0xff;
  break;
 case 2:
  if (!_mskanji2(psenc->ch[1] & 0xff))
   goto encoding_error;
  wchar = ((psenc->ch[0] & 0xff) << 8) | (psenc->ch[1] & 0xff);
  break;
 default:

  goto encoding_error;
 }

 psenc->chlen = 0;

 if (pwc)
  *pwc = wchar;
 *nresult = wchar ? len - chlenbak : 0;
 return (0);

encoding_error:
 psenc->chlen = 0;
 *nresult = (size_t)-1;
 return (EILSEQ);

restart:
 *nresult = (size_t)-2;
 *s = s0;
 return (0);
}
