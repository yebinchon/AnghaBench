
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int nvpair_t ;
struct TYPE_4__ {int * nvl_array_next; } ;
typedef TYPE_1__ nvlist_t ;


 int NVLIST_ASSERT (TYPE_1__*) ;

nvpair_t *
nvlist_get_array_next_nvpair(nvlist_t *nvl)
{

 NVLIST_ASSERT(nvl);

 return (nvl->nvl_array_next);
}
