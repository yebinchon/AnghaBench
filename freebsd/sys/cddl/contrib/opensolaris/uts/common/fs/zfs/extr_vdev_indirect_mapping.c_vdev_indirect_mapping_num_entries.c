
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vim_phys; } ;
typedef TYPE_2__ vdev_indirect_mapping_t ;
typedef int uint64_t ;
struct TYPE_5__ {int vimp_num_entries; } ;


 int ASSERT (int ) ;
 int vdev_indirect_mapping_verify (TYPE_2__*) ;

uint64_t
vdev_indirect_mapping_num_entries(vdev_indirect_mapping_t *vim)
{
 ASSERT(vdev_indirect_mapping_verify(vim));

 return (vim->vim_phys->vimp_num_entries);
}
