
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
typedef int _index_t ;
typedef int _csid_t ;
struct TYPE_3__ {int mb_cur_max; } ;
typedef TYPE_1__ _GBK2KEncodingInfo ;


 int EILSEQ ;
 int EINVAL ;

__attribute__((used)) static __inline int

_citrus_GBK2K_stdenc_cstowc(_GBK2KEncodingInfo * __restrict ei,
    wchar_t * __restrict wc, _csid_t csid, _index_t idx)
{

 switch (csid) {
 case 0:

  *wc = (wchar_t)idx;
  break;
 case 1:

  *wc = (wchar_t)idx | 0x8080U;
  break;
 case 2:

  *wc = (wchar_t)idx;
  break;
 case 3:

  if (ei->mb_cur_max != 4)
   return (EINVAL);
  *wc = (wchar_t)idx;
  break;
 default:
  return (EILSEQ);
 }

 return (0);
}
