
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* sm_phys; TYPE_1__* sm_dbuf; } ;
typedef TYPE_3__ space_map_t ;
typedef int space_map_phys_t ;
struct TYPE_6__ {int smp_histogram; } ;
struct TYPE_5__ {int db_size; } ;


 int bzero (int ,int) ;

void
space_map_histogram_clear(space_map_t *sm)
{
 if (sm->sm_dbuf->db_size != sizeof (space_map_phys_t))
  return;

 bzero(sm->sm_phys->smp_histogram, sizeof (sm->sm_phys->smp_histogram));
}
