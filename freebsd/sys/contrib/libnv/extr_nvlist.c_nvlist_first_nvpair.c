
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int nvpair_t ;
struct TYPE_4__ {int nvl_head; } ;
typedef TYPE_1__ nvlist_t ;


 int NVLIST_ASSERT (TYPE_1__ const*) ;
 int * TAILQ_FIRST (int *) ;

nvpair_t *
nvlist_first_nvpair(const nvlist_t *nvl)
{

 NVLIST_ASSERT(nvl);

 return (TAILQ_FIRST(&nvl->nvl_head));
}
