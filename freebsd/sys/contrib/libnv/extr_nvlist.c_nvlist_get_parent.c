
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int nvpair_t ;
struct TYPE_6__ {int * nvl_parent; } ;
typedef TYPE_1__ nvlist_t ;


 int NVLIST_ASSERT (TYPE_1__ const*) ;
 TYPE_1__ const* nvpair_nvlist (int *) ;

const nvlist_t *
nvlist_get_parent(const nvlist_t *nvl, void **cookiep)
{
 nvpair_t *nvp;

 NVLIST_ASSERT(nvl);

 nvp = nvl->nvl_parent;
 if (cookiep != ((void*)0))
  *cookiep = nvp;
 if (nvp == ((void*)0))
  return (((void*)0));

 return (nvpair_nvlist(nvp));
}
