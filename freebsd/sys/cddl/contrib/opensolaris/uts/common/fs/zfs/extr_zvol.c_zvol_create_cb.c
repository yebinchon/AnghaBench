
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * zct_props; } ;
typedef TYPE_1__ zfs_creat_t ;
typedef int uint64_t ;
typedef int objset_t ;
typedef int nvlist_t ;
typedef int dmu_tx_t ;
typedef int cred_t ;


 int ASSERT (int) ;
 int DMU_OT_NONE ;
 int DMU_OT_ZVOL ;
 int DMU_OT_ZVOL_PROP ;
 int VERIFY (int) ;
 int ZFS_PROP_VOLBLOCKSIZE ;
 int ZFS_PROP_VOLSIZE ;
 int ZVOL_OBJ ;
 int ZVOL_ZAP_OBJ ;
 int dmu_object_claim (int *,int ,int ,int ,int ,int ,int *) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,int *) ;
 scalar_t__ nvlist_remove_all (int *,int ) ;
 int zap_create_claim (int *,int ,int ,int ,int ,int *) ;
 int zap_update (int *,int ,char*,int,int,int *,int *) ;
 int zfs_prop_default_numeric (int ) ;
 int zfs_prop_to_name (int ) ;

void
zvol_create_cb(objset_t *os, void *arg, cred_t *cr, dmu_tx_t *tx)
{
 zfs_creat_t *zct = arg;
 nvlist_t *nvprops = zct->zct_props;
 int error;
 uint64_t volblocksize, volsize;

 VERIFY(nvlist_lookup_uint64(nvprops,
     zfs_prop_to_name(ZFS_PROP_VOLSIZE), &volsize) == 0);
 if (nvlist_lookup_uint64(nvprops,
     zfs_prop_to_name(ZFS_PROP_VOLBLOCKSIZE), &volblocksize) != 0)
  volblocksize = zfs_prop_default_numeric(ZFS_PROP_VOLBLOCKSIZE);





 VERIFY(nvlist_remove_all(nvprops,
     zfs_prop_to_name(ZFS_PROP_VOLSIZE)) == 0);
 (void) nvlist_remove_all(nvprops,
     zfs_prop_to_name(ZFS_PROP_VOLBLOCKSIZE));

 error = dmu_object_claim(os, ZVOL_OBJ, DMU_OT_ZVOL, volblocksize,
     DMU_OT_NONE, 0, tx);
 ASSERT(error == 0);

 error = zap_create_claim(os, ZVOL_ZAP_OBJ, DMU_OT_ZVOL_PROP,
     DMU_OT_NONE, 0, tx);
 ASSERT(error == 0);

 error = zap_update(os, ZVOL_ZAP_OBJ, "size", 8, 1, &volsize, tx);
 ASSERT(error == 0);
}
