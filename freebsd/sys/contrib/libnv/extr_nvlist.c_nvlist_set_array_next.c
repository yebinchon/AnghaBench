
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int nvpair_t ;
struct TYPE_4__ {int * nvl_array_next; int nvl_flags; } ;
typedef TYPE_1__ nvlist_t ;


 int NVLIST_ASSERT (TYPE_1__*) ;
 int NV_FLAG_IN_ARRAY ;
 int nv_free (int *) ;

void
nvlist_set_array_next(nvlist_t *nvl, nvpair_t *ele)
{

 NVLIST_ASSERT(nvl);

 if (ele != ((void*)0)) {
  nvl->nvl_flags |= NV_FLAG_IN_ARRAY;
 } else {
  nvl->nvl_flags &= ~NV_FLAG_IN_ARRAY;
  nv_free(nvl->nvl_array_next);
 }

 nvl->nvl_array_next = ele;
}
