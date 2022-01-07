
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {void* ui64; } ;
struct TYPE_9__ {TYPE_1__ value; } ;
typedef TYPE_2__ kstat_named_t ;
struct TYPE_10__ {int * arcs_esize; int arcs_size; } ;
typedef TYPE_3__ arc_state_t ;


 size_t ARC_BUFC_DATA ;
 size_t ARC_BUFC_METADATA ;
 void* zfs_refcount_count (int *) ;

__attribute__((used)) static void
arc_kstat_update_state(arc_state_t *state, kstat_named_t *size,
    kstat_named_t *evict_data, kstat_named_t *evict_metadata)
{
 size->value.ui64 = zfs_refcount_count(&state->arcs_size);
 evict_data->value.ui64 =
     zfs_refcount_count(&state->arcs_esize[ARC_BUFC_DATA]);
 evict_metadata->value.ui64 =
     zfs_refcount_count(&state->arcs_esize[ARC_BUFC_METADATA]);
}
