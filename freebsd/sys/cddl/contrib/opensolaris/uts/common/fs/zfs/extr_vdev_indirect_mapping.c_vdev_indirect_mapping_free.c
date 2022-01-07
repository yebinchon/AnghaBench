
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* vim_phys; scalar_t__ vim_havecounts; } ;
typedef TYPE_2__ vdev_indirect_mapping_t ;
typedef int uint64_t ;
struct TYPE_11__ {int os_spa; } ;
typedef TYPE_3__ objset_t ;
typedef int dmu_tx_t ;
struct TYPE_9__ {int vimp_counts_object; } ;


 int SPA_FEATURE_OBSOLETE_COUNTS ;
 int VERIFY0 (int ) ;
 int dmu_object_free (TYPE_3__*,int ,int *) ;
 int spa_feature_decr (int ,int ,int *) ;
 int vdev_indirect_mapping_close (TYPE_2__*) ;
 TYPE_2__* vdev_indirect_mapping_open (TYPE_3__*,int ) ;

void
vdev_indirect_mapping_free(objset_t *os, uint64_t object, dmu_tx_t *tx)
{
 vdev_indirect_mapping_t *vim = vdev_indirect_mapping_open(os, object);
 if (vim->vim_havecounts) {
  VERIFY0(dmu_object_free(os, vim->vim_phys->vimp_counts_object,
      tx));
  spa_feature_decr(os->os_spa, SPA_FEATURE_OBSOLETE_COUNTS, tx);
 }
 vdev_indirect_mapping_close(vim);

 VERIFY0(dmu_object_free(os, object, tx));
}
