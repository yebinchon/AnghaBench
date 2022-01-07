
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_41__ TYPE_3__ ;
typedef struct TYPE_40__ TYPE_2__ ;
typedef struct TYPE_39__ TYPE_1__ ;


struct TYPE_39__ {scalar_t__ vdev_guid; int vdev_children; scalar_t__ vdev_id; char* vdev_path; int vdev_isspare; void* vdev_detached; int vdev_dtl_list; struct TYPE_39__* vdev_parent; struct TYPE_39__* vdev_top; void* vdev_unspare; TYPE_3__* vdev_ops; struct TYPE_39__** vdev_child; } ;
typedef TYPE_1__ vdev_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_40__ {scalar_t__ spa_state; scalar_t__ spa_autoexpand; TYPE_1__* spa_root_vdev; } ;
typedef TYPE_2__ spa_t ;
typedef void* boolean_t ;
struct TYPE_41__ {int vdev_op_leaf; } ;


 int ASSERT (int) ;
 void* B_FALSE ;
 void* B_TRUE ;
 int EBUSY ;
 int ENODEV ;
 int ENOTSUP ;
 int ESC_ZFS_VDEV_REMOVE ;
 int FTAG ;
 int MUTEX_HELD (int *) ;
 scalar_t__ POOL_STATE_ACTIVE ;
 int SPA_FEATURE_POOL_CHECKPOINT ;
 scalar_t__ SPA_VERSION_SPARES ;
 int TXG_SIZE ;
 int VDD_DTL ;
 int VDEV_LABEL_REMOVE ;
 int ZFS_ERR_CHECKPOINT_EXISTS ;
 int ZFS_ERR_DISCARDING_CHECKPOINT ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_close (TYPE_2__*,int ) ;
 int spa_event_notify (TYPE_2__*,TYPE_1__*,int *,int ) ;
 scalar_t__ spa_feature_is_active (TYPE_2__*,int ) ;
 scalar_t__ spa_has_checkpoint (TYPE_2__*) ;
 int spa_history_log_internal (TYPE_2__*,char*,int *,char*,char*) ;
 TYPE_1__* spa_lookup_by_guid (TYPE_2__*,scalar_t__,void*) ;
 int spa_namespace_lock ;
 TYPE_2__* spa_next (TYPE_2__*) ;
 int spa_open_ref (TYPE_2__*,int ) ;
 int spa_spare_remove (TYPE_1__*) ;
 void* spa_strdup (char*) ;
 int spa_strfree (char*) ;
 scalar_t__ spa_vdev_enter (TYPE_2__*) ;
 int spa_vdev_exit (TYPE_2__*,TYPE_1__*,scalar_t__,int) ;
 int spa_vdev_remove (TYPE_2__*,scalar_t__,void*) ;
 int spa_vdev_resilver_done (TYPE_2__*) ;
 scalar_t__ spa_version (TYPE_2__*) ;
 int spa_writeable (TYPE_2__*) ;
 scalar_t__ strcmp (char*,char*) ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (char*,char*,size_t) ;
 int txg_list_remove_this (int *,TYPE_1__*,int) ;
 int vdev_compact_children (TYPE_1__*) ;
 int vdev_config_dirty (TYPE_1__*) ;
 int vdev_dirty (TYPE_1__*,int ,TYPE_1__*,scalar_t__) ;
 scalar_t__ vdev_dtl_required (TYPE_1__*) ;
 int vdev_expand (TYPE_1__*,scalar_t__) ;
 int vdev_label_init (TYPE_1__*,int ,int ) ;
 TYPE_3__ vdev_mirror_ops ;
 int vdev_propagate_state (TYPE_1__*) ;
 int vdev_remove_child (TYPE_1__*,TYPE_1__*) ;
 int vdev_remove_parent (TYPE_1__*) ;
 int vdev_reopen (TYPE_1__*) ;
 TYPE_3__ vdev_replacing_ops ;
 TYPE_3__ vdev_spare_ops ;

int
spa_vdev_detach(spa_t *spa, uint64_t guid, uint64_t pguid, int replace_done)
{
 uint64_t txg;
 int error;
 vdev_t *rvd = spa->spa_root_vdev;
 vdev_t *vd, *pvd, *cvd, *tvd;
 boolean_t unspare = B_FALSE;
 uint64_t unspare_guid = 0;
 char *vdpath;

 ASSERT(spa_writeable(spa));

 txg = spa_vdev_enter(spa);

 vd = spa_lookup_by_guid(spa, guid, B_FALSE);
 ASSERT(MUTEX_HELD(&spa_namespace_lock));
 if (spa_feature_is_active(spa, SPA_FEATURE_POOL_CHECKPOINT)) {
  error = (spa_has_checkpoint(spa)) ?
      ZFS_ERR_CHECKPOINT_EXISTS : ZFS_ERR_DISCARDING_CHECKPOINT;
  return (spa_vdev_exit(spa, ((void*)0), txg, error));
 }

 if (vd == ((void*)0))
  return (spa_vdev_exit(spa, ((void*)0), txg, ENODEV));

 if (!vd->vdev_ops->vdev_op_leaf)
  return (spa_vdev_exit(spa, ((void*)0), txg, ENOTSUP));

 pvd = vd->vdev_parent;
 if (pvd->vdev_guid != pguid && pguid != 0)
  return (spa_vdev_exit(spa, ((void*)0), txg, EBUSY));




 if (replace_done && pvd->vdev_ops != &vdev_replacing_ops &&
     pvd->vdev_ops != &vdev_spare_ops)
  return (spa_vdev_exit(spa, ((void*)0), txg, ENOTSUP));

 ASSERT(pvd->vdev_ops != &vdev_spare_ops ||
     spa_version(spa) >= SPA_VERSION_SPARES);




 if (pvd->vdev_ops != &vdev_replacing_ops &&
     pvd->vdev_ops != &vdev_mirror_ops &&
     pvd->vdev_ops != &vdev_spare_ops)
  return (spa_vdev_exit(spa, ((void*)0), txg, ENOTSUP));





 if (vdev_dtl_required(vd))
  return (spa_vdev_exit(spa, ((void*)0), txg, EBUSY));

 ASSERT(pvd->vdev_children >= 2);






 if (pvd->vdev_ops == &vdev_replacing_ops && vd->vdev_id > 0 &&
     vd->vdev_path != ((void*)0)) {
  size_t len = strlen(vd->vdev_path);

  for (int c = 0; c < pvd->vdev_children; c++) {
   cvd = pvd->vdev_child[c];

   if (cvd == vd || cvd->vdev_path == ((void*)0))
    continue;

   if (strncmp(cvd->vdev_path, vd->vdev_path, len) == 0 &&
       strcmp(cvd->vdev_path + len, "/old") == 0) {
    spa_strfree(cvd->vdev_path);
    cvd->vdev_path = spa_strdup(vd->vdev_path);
    break;
   }
  }
 }






 if (pvd->vdev_ops == &vdev_spare_ops &&
     vd->vdev_id == 0 &&
     pvd->vdev_child[pvd->vdev_children - 1]->vdev_isspare)
  unspare = B_TRUE;
 error = vdev_label_init(vd, 0, VDEV_LABEL_REMOVE);




 vdev_remove_child(pvd, vd);
 vdev_compact_children(pvd);




 cvd = pvd->vdev_child[pvd->vdev_children - 1];
 if (unspare) {
  ASSERT(cvd->vdev_isspare);
  spa_spare_remove(cvd);
  unspare_guid = cvd->vdev_guid;
  (void) spa_vdev_remove(spa, unspare_guid, B_TRUE);
  cvd->vdev_unspare = B_TRUE;
 }





 if (pvd->vdev_children == 1) {
  if (pvd->vdev_ops == &vdev_spare_ops)
   cvd->vdev_unspare = B_FALSE;
  vdev_remove_parent(cvd);
 }






 tvd = cvd->vdev_top;
 ASSERT(tvd->vdev_parent == rvd);




 vdev_propagate_state(cvd);
 if (spa->spa_autoexpand) {
  vdev_reopen(tvd);
  vdev_expand(tvd, txg);
 }

 vdev_config_dirty(tvd);







 vdpath = spa_strdup(vd->vdev_path);
 for (int t = 0; t < TXG_SIZE; t++)
  (void) txg_list_remove_this(&tvd->vdev_dtl_list, vd, t);
 vd->vdev_detached = B_TRUE;
 vdev_dirty(tvd, VDD_DTL, vd, txg);

 spa_event_notify(spa, vd, ((void*)0), ESC_ZFS_VDEV_REMOVE);


 spa_open_ref(spa, FTAG);

 error = spa_vdev_exit(spa, vd, txg, 0);

 spa_history_log_internal(spa, "detach", ((void*)0),
     "vdev=%s", vdpath);
 spa_strfree(vdpath);






 if (unspare) {
  spa_t *altspa = ((void*)0);

  mutex_enter(&spa_namespace_lock);
  while ((altspa = spa_next(altspa)) != ((void*)0)) {
   if (altspa->spa_state != POOL_STATE_ACTIVE ||
       altspa == spa)
    continue;

   spa_open_ref(altspa, FTAG);
   mutex_exit(&spa_namespace_lock);
   (void) spa_vdev_remove(altspa, unspare_guid, B_TRUE);
   mutex_enter(&spa_namespace_lock);
   spa_close(altspa, FTAG);
  }
  mutex_exit(&spa_namespace_lock);


  spa_vdev_resilver_done(spa);
 }


 mutex_enter(&spa_namespace_lock);
 spa_close(spa, FTAG);
 mutex_exit(&spa_namespace_lock);

 return (error);
}
