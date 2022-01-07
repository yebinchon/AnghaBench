
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iconv_hooks {int dummy; } ;
struct _citrus_stdenc {TYPE_1__* ce_ops; } ;
typedef int _citrus_wc_t ;
struct TYPE_2__ {int (* eo_wctomb ) (struct _citrus_stdenc*,char*,size_t,int ,void*,size_t*,struct iconv_hooks*) ;} ;


 int stub1 (struct _citrus_stdenc*,char*,size_t,int ,void*,size_t*,struct iconv_hooks*) ;

__attribute__((used)) static __inline int
_citrus_stdenc_wctomb(struct _citrus_stdenc * __restrict ce,
    char * __restrict s, size_t n, _citrus_wc_t wc, void * __restrict ps,
    size_t * __restrict nresult, struct iconv_hooks *hooks)
{

 return ((*ce->ce_ops->eo_wctomb)(ce, s, n, wc, ps, nresult, hooks));
}
