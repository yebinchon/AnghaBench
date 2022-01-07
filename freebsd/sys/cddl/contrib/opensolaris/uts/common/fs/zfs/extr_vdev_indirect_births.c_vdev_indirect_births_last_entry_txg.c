
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* vib_phys; TYPE_3__* vib_entries; } ;
typedef TYPE_2__ vdev_indirect_births_t ;
struct TYPE_8__ {int vibe_phys_birth_txg; } ;
typedef TYPE_3__ vdev_indirect_birth_entry_phys_t ;
typedef int uint64_t ;
struct TYPE_6__ {int vib_count; } ;


 int ASSERT (int) ;
 int vdev_indirect_births_verify (TYPE_2__*) ;

uint64_t
vdev_indirect_births_last_entry_txg(vdev_indirect_births_t *vib)
{
 ASSERT(vdev_indirect_births_verify(vib));
 ASSERT(vib->vib_phys->vib_count > 0);

 vdev_indirect_birth_entry_phys_t *last =
     &vib->vib_entries[vib->vib_phys->vib_count - 1];
 return (last->vibe_phys_birth_txg);
}
