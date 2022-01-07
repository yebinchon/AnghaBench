
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t nvp_datasize; } ;
typedef TYPE_1__ nvpair_t ;


 int NVPAIR_ASSERT (TYPE_1__ const*) ;

size_t
nvpair_size(const nvpair_t *nvp)
{

 NVPAIR_ASSERT(nvp);

 return (nvp->nvp_datasize);
}
