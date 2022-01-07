
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int nvpair_t ;
struct TYPE_4__ {int * nvl_parent; } ;
typedef TYPE_1__ nvlist_t ;


 int NVLIST_ASSERT (TYPE_1__*) ;

void
nvlist_set_parent(nvlist_t *nvl, nvpair_t *parent)
{

 NVLIST_ASSERT(nvl);

 nvl->nvl_parent = parent;
}
