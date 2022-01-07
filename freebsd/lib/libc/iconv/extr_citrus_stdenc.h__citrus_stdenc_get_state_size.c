
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _citrus_stdenc {TYPE_1__* ce_traits; } ;
struct TYPE_2__ {size_t et_state_size; } ;



__attribute__((used)) static __inline size_t
_citrus_stdenc_get_state_size(struct _citrus_stdenc *ce)
{

 return (ce->ce_traits->et_state_size);
}
