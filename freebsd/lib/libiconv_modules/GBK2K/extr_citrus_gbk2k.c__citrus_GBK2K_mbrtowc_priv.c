
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_5__ {int chlen; char* ch; } ;
typedef TYPE_1__ _GBK2KState ;
struct TYPE_6__ {int mb_cur_max; } ;
typedef TYPE_2__ _GBK2KEncodingInfo ;


 int EILSEQ ;
 int EINVAL ;
 int _PSENC ;
 int _PUSH_PSENC (int ) ;
 int _mb_leadbyte (int ) ;
 int _mb_singlebyte (int ) ;
 int _mb_surrogate (int ) ;
 int _mb_trailbyte (int ) ;

__attribute__((used)) static int
_citrus_GBK2K_mbrtowc_priv(_GBK2KEncodingInfo * __restrict ei,
    wchar_t * __restrict pwc, char ** __restrict s, size_t n,
    _GBK2KState * __restrict psenc, size_t * __restrict nresult)
{
 char *s0, *s1;
 wchar_t wc;
 int chlenbak, len;

 s0 = *s;

 if (s0 == ((void*)0)) {

  psenc->chlen = 0;
  *nresult = 0;
  return (0);
 }

 chlenbak = psenc->chlen;

 switch (psenc->chlen) {
 case 3:
  if (!_mb_leadbyte (_PSENC))
   goto invalid;

 case 2:
  if (!_mb_surrogate(_PSENC) || _mb_trailbyte(_PSENC))
   goto invalid;

 case 1:
  if (!_mb_leadbyte (_PSENC))
   goto invalid;

 case 0:
  break;
 default:
  goto invalid;
 }

 for (;;) {
  if (n-- < 1)
   goto restart;

  _PUSH_PSENC(*s0++);

  switch (psenc->chlen) {
  case 1:
   if (_mb_singlebyte(_PSENC))
    goto convert;
   if (_mb_leadbyte (_PSENC))
    continue;
   goto ilseq;
  case 2:
   if (_mb_trailbyte (_PSENC))
    goto convert;
   if (ei->mb_cur_max == 4 &&
       _mb_surrogate (_PSENC))
    continue;
   goto ilseq;
  case 3:
   if (_mb_leadbyte (_PSENC))
    continue;
   goto ilseq;
  case 4:
   if (_mb_surrogate (_PSENC))
    goto convert;
   goto ilseq;
  }
 }

convert:
 len = psenc->chlen;
 s1 = &psenc->ch[0];
 wc = 0;
 while (len-- > 0)
  wc = (wc << 8) | (*s1++ & 0xff);

 if (pwc != ((void*)0))
  *pwc = wc;
 *s = s0;
 *nresult = (wc == 0) ? 0 : psenc->chlen - chlenbak;

 psenc->chlen = 0;

 return (0);

restart:
 *s = s0;
 *nresult = (size_t)-2;

 return (0);

invalid:
 return (EINVAL);

ilseq:
 *nresult = (size_t)-1;
 return (EILSEQ);
}
