
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int nvpair_t ;
struct TYPE_6__ {int * nvl_array_next; } ;
typedef TYPE_1__ nvlist_t ;


 int NVLIST_ASSERT (TYPE_1__ const*) ;
 TYPE_1__ const* nvpair_get_nvlist (int *) ;

const nvlist_t *
nvlist_get_array_next(const nvlist_t *nvl)
{
 nvpair_t *nvp;

 NVLIST_ASSERT(nvl);

 nvp = nvl->nvl_array_next;
 if (nvp == ((void*)0))
  return (((void*)0));

 return (nvpair_get_nvlist(nvp));
}
