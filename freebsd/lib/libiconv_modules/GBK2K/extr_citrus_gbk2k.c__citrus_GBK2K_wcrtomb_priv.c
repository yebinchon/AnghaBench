
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_5__ {size_t chlen; int ch; } ;
typedef TYPE_1__ _GBK2KState ;
struct TYPE_6__ {int mb_cur_max; } ;
typedef TYPE_2__ _GBK2KEncodingInfo ;


 int E2BIG ;
 int EILSEQ ;
 int EINVAL ;
 int _PUSH_PSENC (int) ;
 size_t _mb_count (int) ;
 int _mb_leadbyte (int ) ;
 int _mb_singlebyte (int ) ;
 int _mb_surrogate (int ) ;
 int _mb_trailbyte (int ) ;
 int memcpy (char*,int ,size_t) ;

__attribute__((used)) static int
_citrus_GBK2K_wcrtomb_priv(_GBK2KEncodingInfo * __restrict ei,
    char * __restrict s, size_t n, wchar_t wc, _GBK2KState * __restrict psenc,
    size_t * __restrict nresult)
{
 size_t len;
 int ret;

 if (psenc->chlen != 0) {
  ret = EINVAL;
  goto err;
 }

 len = _mb_count(wc);
 if (n < len) {
  ret = E2BIG;
  goto err;
 }

 switch (len) {
 case 1:
  if (!_mb_singlebyte(_PUSH_PSENC(wc ))) {
   ret = EILSEQ;
   goto err;
  }
  break;
 case 2:
  if (!_mb_leadbyte (_PUSH_PSENC(wc >> 8)) ||
      !_mb_trailbyte (_PUSH_PSENC(wc))) {
   ret = EILSEQ;
   goto err;
  }
  break;
 case 4:
  if (ei->mb_cur_max != 4 ||
      !_mb_leadbyte (_PUSH_PSENC(wc >> 24)) ||
      !_mb_surrogate (_PUSH_PSENC(wc >> 16)) ||
      !_mb_leadbyte (_PUSH_PSENC(wc >> 8)) ||
      !_mb_surrogate (_PUSH_PSENC(wc))) {
   ret = EILSEQ;
   goto err;
  }
  break;
 }

 memcpy(s, psenc->ch, psenc->chlen);
 *nresult = psenc->chlen;

 psenc->chlen = 0;

 return (0);

err:
 *nresult = (size_t)-1;
 return (ret);
}
