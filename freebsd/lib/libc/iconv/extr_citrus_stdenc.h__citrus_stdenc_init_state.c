
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _citrus_stdenc {TYPE_1__* ce_ops; } ;
struct TYPE_2__ {int (* eo_init_state ) (struct _citrus_stdenc*,void*) ;} ;


 int stub1 (struct _citrus_stdenc*,void*) ;

__attribute__((used)) static __inline int
_citrus_stdenc_init_state(struct _citrus_stdenc * __restrict ce,
    void * __restrict ps)
{

 return ((*ce->ce_ops->eo_init_state)(ce, ps));
}
