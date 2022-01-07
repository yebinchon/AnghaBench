
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* drc_ds; scalar_t__ drc_resumable; } ;
typedef TYPE_2__ dmu_recv_cookie_t ;
struct TYPE_8__ {TYPE_1__* ds_dir; } ;
struct TYPE_6__ {int dd_pool; } ;


 int ZFS_MAX_DATASET_NAME_LEN ;
 int dmu_recv_tag ;
 int dsl_dataset_disown (TYPE_3__*,int ) ;
 int dsl_dataset_name (TYPE_3__*,char*) ;
 int dsl_destroy_head (char*) ;
 int txg_wait_synced (int ,int ) ;

__attribute__((used)) static void
dmu_recv_cleanup_ds(dmu_recv_cookie_t *drc)
{
 if (drc->drc_resumable) {

  txg_wait_synced(drc->drc_ds->ds_dir->dd_pool, 0);
  dsl_dataset_disown(drc->drc_ds, dmu_recv_tag);
 } else {
  char name[ZFS_MAX_DATASET_NAME_LEN];
  dsl_dataset_name(drc->drc_ds, name);
  dsl_dataset_disown(drc->drc_ds, dmu_recv_tag);
  (void) dsl_destroy_head(name);
 }
}
