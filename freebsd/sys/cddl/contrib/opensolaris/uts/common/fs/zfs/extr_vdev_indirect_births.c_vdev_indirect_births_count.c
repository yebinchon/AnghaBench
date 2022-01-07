
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vib_phys; } ;
typedef TYPE_2__ vdev_indirect_births_t ;
typedef int uint64_t ;
struct TYPE_5__ {int vib_count; } ;


 int ASSERT (int ) ;
 int vdev_indirect_births_verify (TYPE_2__*) ;

uint64_t
vdev_indirect_births_count(vdev_indirect_births_t *vib)
{
 ASSERT(vdev_indirect_births_verify(vib));

 return (vib->vib_phys->vib_count);
}
