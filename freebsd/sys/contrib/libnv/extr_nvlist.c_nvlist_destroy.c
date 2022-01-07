
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int nvpair_t ;
struct TYPE_7__ {scalar_t__ nvl_magic; int * nvl_parent; int * nvl_array_next; } ;
typedef TYPE_1__ nvlist_t ;


 int ERRNO_RESTORE () ;
 int ERRNO_SAVE () ;
 int NVLIST_ASSERT (TYPE_1__*) ;
 int nv_free (TYPE_1__*) ;
 int * nvlist_first_nvpair (TYPE_1__*) ;
 int nvlist_remove_nvpair (TYPE_1__*,int *) ;
 int nvpair_free (int *) ;
 int nvpair_free_structure (int *) ;

void
nvlist_destroy(nvlist_t *nvl)
{
 nvpair_t *nvp;

 if (nvl == ((void*)0))
  return;

 ERRNO_SAVE();

 NVLIST_ASSERT(nvl);

 while ((nvp = nvlist_first_nvpair(nvl)) != ((void*)0)) {
  nvlist_remove_nvpair(nvl, nvp);
  nvpair_free(nvp);
 }
 if (nvl->nvl_array_next != ((void*)0))
  nvpair_free_structure(nvl->nvl_array_next);
 nvl->nvl_array_next = ((void*)0);
 nvl->nvl_parent = ((void*)0);
 nvl->nvl_magic = 0;
 nv_free(nvl);

 ERRNO_RESTORE();
}
