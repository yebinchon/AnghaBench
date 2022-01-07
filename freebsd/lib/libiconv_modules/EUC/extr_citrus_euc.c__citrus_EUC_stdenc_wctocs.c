
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
typedef scalar_t__ _index_t ;
typedef scalar_t__ _csid_t ;
typedef scalar_t__ _citrus_index_t ;
typedef scalar_t__ _citrus_csid_t ;
struct TYPE_3__ {int mask; } ;
typedef TYPE_1__ _EUCEncodingInfo ;



__attribute__((used)) static __inline int

_citrus_EUC_stdenc_wctocs(_EUCEncodingInfo * __restrict ei,
    _csid_t * __restrict csid, _index_t * __restrict idx, wchar_t wc)
{
 wchar_t m, nm;

 m = wc & ei->mask;
 nm = wc & ~m;

 *csid = (_citrus_csid_t)m;
 *idx = (_citrus_index_t)nm;

 return (0);
}
