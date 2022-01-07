
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _citrus_stdenc_state_desc {int dummy; } ;
struct _citrus_stdenc {TYPE_1__* ce_ops; } ;
struct TYPE_2__ {int (* eo_get_state_desc ) (struct _citrus_stdenc*,void*,int,struct _citrus_stdenc_state_desc*) ;} ;


 int stub1 (struct _citrus_stdenc*,void*,int,struct _citrus_stdenc_state_desc*) ;

__attribute__((used)) static __inline int
_citrus_stdenc_get_state_desc(struct _citrus_stdenc * __restrict ce,
    void * __restrict ps, int id,
    struct _citrus_stdenc_state_desc * __restrict d)
{

 return ((*ce->ce_ops->eo_get_state_desc)(ce, ps, id, d));
}
