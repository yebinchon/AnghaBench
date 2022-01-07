
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* sm_phys; int * sm_dbuf; } ;
typedef TYPE_2__ space_map_t ;
typedef scalar_t__ int64_t ;
struct TYPE_5__ {scalar_t__ smp_alloc; } ;


 int ASSERT (int ) ;
 scalar_t__ space_map_allocated (TYPE_2__*) ;

int64_t
space_map_alloc_delta(space_map_t *sm)
{
 if (sm == ((void*)0))
  return (0);
 ASSERT(sm->sm_dbuf != ((void*)0));
 return (sm->sm_phys->smp_alloc - space_map_allocated(sm));
}
