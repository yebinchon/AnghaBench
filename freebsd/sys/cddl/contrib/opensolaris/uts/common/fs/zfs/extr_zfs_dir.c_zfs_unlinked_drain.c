
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ z_links; int z_unlinked; int z_sa_hdl; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_13__ {int z_os; int z_unlinkedobj; } ;
typedef TYPE_2__ zfsvfs_t ;
typedef int zap_cursor_t ;
struct TYPE_14__ {int za_first_integer; } ;
typedef TYPE_3__ zap_attribute_t ;
typedef int dmu_tx_t ;
struct TYPE_15__ {scalar_t__ doi_type; } ;
typedef TYPE_4__ dmu_object_info_t ;


 int ASSERT (int) ;
 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ DMU_OT_DIRECTORY_CONTENTS ;
 scalar_t__ DMU_OT_PLAIN_FILE_CONTENTS ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int SA_ZPL_LINKS (TYPE_2__*) ;
 int TXG_WAIT ;
 int VERIFY0 (int ) ;
 int ZTOV (TYPE_1__*) ;
 int dmu_object_info (int ,int ,TYPE_4__*) ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (int ) ;
 int dmu_tx_hold_sa (int *,int ,int ) ;
 int sa_update (int ,int ,scalar_t__*,int,int *) ;
 int vn_lock (int ,int) ;
 int vput (int ) ;
 int zap_cursor_advance (int *) ;
 int zap_cursor_fini (int *) ;
 int zap_cursor_init (int *,int ,int ) ;
 scalar_t__ zap_cursor_retrieve (int *,TYPE_3__*) ;
 int zfs_zget (TYPE_2__*,int ,TYPE_1__**) ;

void
zfs_unlinked_drain(zfsvfs_t *zfsvfs)
{
 zap_cursor_t zc;
 zap_attribute_t zap;
 dmu_object_info_t doi;
 znode_t *zp;
 dmu_tx_t *tx;
 int error;




 for (zap_cursor_init(&zc, zfsvfs->z_os, zfsvfs->z_unlinkedobj);
     zap_cursor_retrieve(&zc, &zap) == 0;
     zap_cursor_advance(&zc)) {





  error = dmu_object_info(zfsvfs->z_os,
      zap.za_first_integer, &doi);
  if (error != 0)
   continue;

  ASSERT((doi.doi_type == DMU_OT_PLAIN_FILE_CONTENTS) ||
      (doi.doi_type == DMU_OT_DIRECTORY_CONTENTS));




  error = zfs_zget(zfsvfs, zap.za_first_integer, &zp);







  if (error != 0)
   continue;

  vn_lock(ZTOV(zp), LK_EXCLUSIVE | LK_RETRY);
  zp->z_unlinked = B_TRUE;
  vput(ZTOV(zp));
 }
 zap_cursor_fini(&zc);
}
