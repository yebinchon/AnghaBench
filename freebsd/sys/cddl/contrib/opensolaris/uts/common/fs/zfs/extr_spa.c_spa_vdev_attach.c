
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_40__ TYPE_3__ ;
typedef struct TYPE_39__ TYPE_2__ ;
typedef struct TYPE_38__ TYPE_1__ ;


struct TYPE_38__ {int vdev_children; int vdev_isspare; scalar_t__ vdev_asize; scalar_t__ vdev_ashift; char* vdev_path; char* vdev_devid; int vdev_id; struct TYPE_38__* vdev_parent; struct TYPE_38__* vdev_top; int vdev_crtxg; TYPE_2__* vdev_ops; scalar_t__ vdev_resilver_txg; int vdev_guid; scalar_t__ vdev_islog; struct TYPE_38__** vdev_child; } ;
typedef TYPE_1__ vdev_t ;
struct TYPE_39__ {int vdev_op_leaf; } ;
typedef TYPE_2__ vdev_ops_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_40__ {scalar_t__ spa_bootfs; int spa_dsl_pool; int * spa_vdev_removal; TYPE_1__* spa_root_vdev; } ;
typedef TYPE_3__ spa_t ;
typedef int nvlist_t ;


 int ASSERT (int) ;
 int B_FALSE ;
 int DTL_MISSING ;
 int EBUSY ;
 int EDOM ;
 int EINVAL ;
 int ENODEV ;
 int ENOTSUP ;
 int EOVERFLOW ;
 int ESC_ZFS_BOOTFS_VDEV_ATTACH ;
 int ESC_ZFS_VDEV_ATTACH ;
 int ESC_ZFS_VDEV_SPARE ;
 int KM_SLEEP ;
 int MUTEX_HELD (int *) ;
 int SPA_FEATURE_POOL_CHECKPOINT ;
 scalar_t__ SPA_VERSION_MULTI_REPLACE ;
 scalar_t__ TXG_CONCURRENT_STATES ;
 scalar_t__ TXG_INITIAL ;
 int VDD_DTL ;
 int VDEV_ALLOC_ATTACH ;
 int ZFS_ERR_CHECKPOINT_EXISTS ;
 int ZFS_ERR_DISCARDING_CHECKPOINT ;
 int dsl_resilver_restart (int ,scalar_t__) ;
 char* kmem_alloc (scalar_t__,int ) ;
 int spa_config_parse (TYPE_3__*,TYPE_1__**,int *,int *,int ,int ) ;
 int spa_event_notify (TYPE_3__*,TYPE_1__*,int *,int ) ;
 scalar_t__ spa_feature_is_active (TYPE_3__*,int ) ;
 scalar_t__ spa_has_checkpoint (TYPE_3__*) ;
 int spa_has_spare (TYPE_3__*,int ) ;
 int spa_history_log_internal (TYPE_3__*,char*,int *,char*,char*,char*,char*,char*) ;
 TYPE_1__* spa_lookup_by_guid (TYPE_3__*,scalar_t__,int ) ;
 int spa_namespace_lock ;
 int spa_spare_activate (TYPE_1__*) ;
 char* spa_strdup (char*) ;
 int spa_strfree (char*) ;
 scalar_t__ spa_vdev_enter (TYPE_3__*) ;
 int spa_vdev_exit (TYPE_3__*,TYPE_1__*,scalar_t__,int) ;
 scalar_t__ spa_version (TYPE_3__*) ;
 int spa_writeable (TYPE_3__*) ;
 int sprintf (char*,char*,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int vdev_add_child (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* vdev_add_parent (TYPE_1__*,TYPE_2__*) ;
 int vdev_config_dirty (TYPE_1__*) ;
 int vdev_create (TYPE_1__*,scalar_t__,int) ;
 int vdev_dirty (TYPE_1__*,int ,TYPE_1__*,scalar_t__) ;
 int vdev_dtl_dirty (TYPE_1__*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ vdev_get_min_asize (TYPE_1__*) ;
 TYPE_2__ vdev_mirror_ops ;
 int vdev_remove_child (TYPE_1__*,TYPE_1__*) ;
 TYPE_2__ vdev_replacing_ops ;
 TYPE_2__ vdev_root_ops ;
 TYPE_2__ vdev_spare_ops ;

int
spa_vdev_attach(spa_t *spa, uint64_t guid, nvlist_t *nvroot, int replacing)
{
 uint64_t txg, dtl_max_txg;
 vdev_t *rvd = spa->spa_root_vdev;
 vdev_t *oldvd, *newvd, *newrootvd, *pvd, *tvd;
 vdev_ops_t *pvops;
 char *oldvdpath, *newvdpath;
 int newvd_isspare;
 int error;

 ASSERT(spa_writeable(spa));

 txg = spa_vdev_enter(spa);

 oldvd = spa_lookup_by_guid(spa, guid, B_FALSE);

 ASSERT(MUTEX_HELD(&spa_namespace_lock));
 if (spa_feature_is_active(spa, SPA_FEATURE_POOL_CHECKPOINT)) {
  error = (spa_has_checkpoint(spa)) ?
      ZFS_ERR_CHECKPOINT_EXISTS : ZFS_ERR_DISCARDING_CHECKPOINT;
  return (spa_vdev_exit(spa, ((void*)0), txg, error));
 }

 if (spa->spa_vdev_removal != ((void*)0))
  return (spa_vdev_exit(spa, ((void*)0), txg, EBUSY));

 if (oldvd == ((void*)0))
  return (spa_vdev_exit(spa, ((void*)0), txg, ENODEV));

 if (!oldvd->vdev_ops->vdev_op_leaf)
  return (spa_vdev_exit(spa, ((void*)0), txg, ENOTSUP));

 pvd = oldvd->vdev_parent;

 if ((error = spa_config_parse(spa, &newrootvd, nvroot, ((void*)0), 0,
     VDEV_ALLOC_ATTACH)) != 0)
  return (spa_vdev_exit(spa, ((void*)0), txg, EINVAL));

 if (newrootvd->vdev_children != 1)
  return (spa_vdev_exit(spa, newrootvd, txg, EINVAL));

 newvd = newrootvd->vdev_child[0];

 if (!newvd->vdev_ops->vdev_op_leaf)
  return (spa_vdev_exit(spa, newrootvd, txg, EINVAL));

 if ((error = vdev_create(newrootvd, txg, replacing)) != 0)
  return (spa_vdev_exit(spa, newrootvd, txg, error));




 if (oldvd->vdev_top->vdev_islog && newvd->vdev_isspare)
  return (spa_vdev_exit(spa, newrootvd, txg, ENOTSUP));

 if (!replacing) {




  if (pvd->vdev_ops != &vdev_mirror_ops &&
      pvd->vdev_ops != &vdev_root_ops)
   return (spa_vdev_exit(spa, newrootvd, txg, ENOTSUP));

  pvops = &vdev_mirror_ops;
 } else {




  if (pvd->vdev_ops == &vdev_spare_ops &&
      oldvd->vdev_isspare &&
      !spa_has_spare(spa, newvd->vdev_guid))
   return (spa_vdev_exit(spa, newrootvd, txg, ENOTSUP));
  if (pvd->vdev_ops == &vdev_replacing_ops &&
      spa_version(spa) < SPA_VERSION_MULTI_REPLACE) {
   return (spa_vdev_exit(spa, newrootvd, txg, ENOTSUP));
  } else if (pvd->vdev_ops == &vdev_spare_ops &&
      newvd->vdev_isspare != oldvd->vdev_isspare) {
   return (spa_vdev_exit(spa, newrootvd, txg, ENOTSUP));
  }

  if (newvd->vdev_isspare)
   pvops = &vdev_spare_ops;
  else
   pvops = &vdev_replacing_ops;
 }




 if (newvd->vdev_asize < vdev_get_min_asize(oldvd))
  return (spa_vdev_exit(spa, newrootvd, txg, EOVERFLOW));





 if (newvd->vdev_ashift > oldvd->vdev_top->vdev_ashift)
  return (spa_vdev_exit(spa, newrootvd, txg, EDOM));





 if (strcmp(oldvd->vdev_path, newvd->vdev_path) == 0) {
  spa_strfree(oldvd->vdev_path);
  oldvd->vdev_path = kmem_alloc(strlen(newvd->vdev_path) + 5,
      KM_SLEEP);
  (void) sprintf(oldvd->vdev_path, "%s/%s",
      newvd->vdev_path, "old");
  if (oldvd->vdev_devid != ((void*)0)) {
   spa_strfree(oldvd->vdev_devid);
   oldvd->vdev_devid = ((void*)0);
  }
 }


 newvd->vdev_resilver_txg = txg;





 if (pvd->vdev_ops != pvops)
  pvd = vdev_add_parent(oldvd, pvops);

 ASSERT(pvd->vdev_top->vdev_parent == rvd);
 ASSERT(pvd->vdev_ops == pvops);
 ASSERT(oldvd->vdev_parent == pvd);




 vdev_remove_child(newrootvd, newvd);
 newvd->vdev_id = pvd->vdev_children;
 newvd->vdev_crtxg = oldvd->vdev_crtxg;
 vdev_add_child(pvd, newvd);

 tvd = newvd->vdev_top;
 ASSERT(pvd->vdev_top == tvd);
 ASSERT(tvd->vdev_parent == rvd);

 vdev_config_dirty(tvd);






 dtl_max_txg = txg + TXG_CONCURRENT_STATES;

 vdev_dtl_dirty(newvd, DTL_MISSING, TXG_INITIAL,
     dtl_max_txg - TXG_INITIAL);

 if (newvd->vdev_isspare) {
  spa_spare_activate(newvd);
  spa_event_notify(spa, newvd, ((void*)0), ESC_ZFS_VDEV_SPARE);
 }

 oldvdpath = spa_strdup(oldvd->vdev_path);
 newvdpath = spa_strdup(newvd->vdev_path);
 newvd_isspare = newvd->vdev_isspare;




 vdev_dirty(tvd, VDD_DTL, newvd, txg);






 dsl_resilver_restart(spa->spa_dsl_pool, dtl_max_txg);

 if (spa->spa_bootfs)
  spa_event_notify(spa, newvd, ((void*)0), ESC_ZFS_BOOTFS_VDEV_ATTACH);

 spa_event_notify(spa, newvd, ((void*)0), ESC_ZFS_VDEV_ATTACH);




 (void) spa_vdev_exit(spa, newrootvd, dtl_max_txg, 0);

 spa_history_log_internal(spa, "vdev attach", ((void*)0),
     "%s vdev=%s %s vdev=%s",
     replacing && newvd_isspare ? "spare in" :
     replacing ? "replace" : "attach", newvdpath,
     replacing ? "for" : "to", oldvdpath);

 spa_strfree(oldvdpath);
 spa_strfree(newvdpath);

 return (0);
}
