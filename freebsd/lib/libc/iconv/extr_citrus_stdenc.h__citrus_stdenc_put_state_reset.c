
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _citrus_stdenc {TYPE_1__* ce_ops; } ;
struct TYPE_2__ {int (* eo_put_state_reset ) (struct _citrus_stdenc*,char*,size_t,void*,size_t*) ;} ;


 int stub1 (struct _citrus_stdenc*,char*,size_t,void*,size_t*) ;

__attribute__((used)) static __inline int
_citrus_stdenc_put_state_reset(struct _citrus_stdenc * __restrict ce,
    char * __restrict s, size_t n, void * __restrict ps,
    size_t * __restrict nresult)
{

 return ((*ce->ce_ops->eo_put_state_reset)(ce, s, n, ps, nresult));
}
