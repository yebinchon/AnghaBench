
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* sm_phys; int sm_length; int sm_alloc; } ;
typedef TYPE_2__ space_map_t ;
struct TYPE_4__ {int smp_objsize; int smp_alloc; } ;



void
space_map_update(space_map_t *sm)
{
 if (sm == ((void*)0))
  return;

 sm->sm_alloc = sm->sm_phys->smp_alloc;
 sm->sm_length = sm->sm_phys->smp_objsize;
}
