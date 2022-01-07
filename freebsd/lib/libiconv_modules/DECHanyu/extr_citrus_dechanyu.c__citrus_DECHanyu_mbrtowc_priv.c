
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {int chlen; int* ch; } ;
typedef TYPE_1__ _DECHanyuState ;
typedef int _DECHanyuEncodingInfo ;


 int EILSEQ ;
 int EINVAL ;
 scalar_t__ HANYUBIT ;
 size_t _ENCODING_IS_STATE_DEPENDENT ;
 int _citrus_DECHanyu_init_state (int *,TYPE_1__*) ;
 int is_hanyu1 (int) ;
 int is_hanyu2 (int) ;
 int is_leadbyte (int) ;
 int is_singlebyte (int) ;
 int is_trailbyte (int) ;

__attribute__((used)) static int

_citrus_DECHanyu_mbrtowc_priv(_DECHanyuEncodingInfo * __restrict ei,
    wchar_t * __restrict pwc, char ** __restrict s, size_t n,
    _DECHanyuState * __restrict psenc, size_t * __restrict nresult)
{
 char *s0;
 wchar_t wc;
 int ch;

 if (*s == ((void*)0)) {
  _citrus_DECHanyu_init_state(ei, psenc);
  *nresult = _ENCODING_IS_STATE_DEPENDENT;
  return (0);
 }
 s0 = *s;

 wc = (wchar_t)0;
 switch (psenc->chlen) {
 case 0:
  if (n-- < 1)
   goto restart;
  ch = *s0++ & 0xFF;
  if (is_singlebyte(ch)) {
   if (pwc != ((void*)0))
    *pwc = (wchar_t)ch;
   *nresult = (size_t)((ch == 0) ? 0 : 1);
   *s = s0;
   return (0);
  }
  if (!is_leadbyte(ch))
   goto ilseq;
  psenc->ch[psenc->chlen++] = ch;
  break;
 case 1:
  ch = psenc->ch[0] & 0xFF;
  if (!is_leadbyte(ch))
   return (EINVAL);
  break;
 case 2: case 3:
  ch = psenc->ch[0] & 0xFF;
  if (is_hanyu1(ch)) {
   ch = psenc->ch[1] & 0xFF;
   if (is_hanyu2(ch)) {
    wc |= (wchar_t)HANYUBIT;
    break;
   }
  }

 default:
  return (EINVAL);
 }

 switch (psenc->chlen) {
 case 1:
  if (is_hanyu1(ch)) {
   if (n-- < 1)
    goto restart;
   ch = *s0++ & 0xFF;
   if (!is_hanyu2(ch))
    goto ilseq;
   psenc->ch[psenc->chlen++] = ch;
   wc |= (wchar_t)HANYUBIT;
   if (n-- < 1)
    goto restart;
   ch = *s0++ & 0xFF;
   if (!is_leadbyte(ch))
    goto ilseq;
   psenc->ch[psenc->chlen++] = ch;
  }
  break;
 case 2:
  if (n-- < 1)
   goto restart;
  ch = *s0++ & 0xFF;
  if (!is_leadbyte(ch))
   goto ilseq;
  psenc->ch[psenc->chlen++] = ch;
  break;
 case 3:
  ch = psenc->ch[2] & 0xFF;
  if (!is_leadbyte(ch))
   return (EINVAL);
 }
 if (n-- < 1)
  goto restart;
 wc |= (wchar_t)(ch << 8);
 ch = *s0++ & 0xFF;
 if (!is_trailbyte(ch))
  goto ilseq;
 wc |= (wchar_t)ch;
 if (pwc != ((void*)0))
  *pwc = wc;
 *nresult = (size_t)(s0 - *s);
 *s = s0;
 psenc->chlen = 0;

 return (0);

restart:
 *nresult = (size_t)-2;
 *s = s0;
 return (0);

ilseq:
 *nresult = (size_t)-1;
 return (EILSEQ);
}
