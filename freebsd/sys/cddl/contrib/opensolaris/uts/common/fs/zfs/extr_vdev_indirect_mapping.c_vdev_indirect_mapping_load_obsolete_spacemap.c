
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vdev_indirect_mapping_t ;
typedef int uint32_t ;
typedef int space_map_t ;
struct TYPE_3__ {int * losma_vim; int * losma_counts; } ;
typedef TYPE_1__ load_obsolete_space_map_arg_t ;


 int VERIFY0 (int ) ;
 int load_obsolete_sm_callback ;
 int space_map_iterate (int *,int ,TYPE_1__*) ;

void
vdev_indirect_mapping_load_obsolete_spacemap(vdev_indirect_mapping_t *vim,
    uint32_t *counts, space_map_t *obsolete_space_sm)
{
 load_obsolete_space_map_arg_t losma;
 losma.losma_counts = counts;
 losma.losma_vim = vim;
 VERIFY0(space_map_iterate(obsolete_space_sm,
     load_obsolete_sm_callback, &losma));
}
