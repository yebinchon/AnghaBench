
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * nvp_list; } ;
typedef TYPE_1__ nvpair_t ;
typedef int nvlist_t ;


 int NVPAIR_ASSERT (TYPE_1__ const*) ;

nvlist_t *
nvpair_nvlist(const nvpair_t *nvp)
{

 NVPAIR_ASSERT(nvp);

 return (nvp->nvp_list);
}
