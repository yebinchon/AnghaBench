
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_11__ ;


struct TYPE_19__ {scalar_t__ vs_aux; } ;
struct TYPE_20__ {scalar_t__ vdev_open_thread; scalar_t__ vdev_state; scalar_t__ vdev_min_asize; scalar_t__ vdev_children; scalar_t__ vdev_label_aux; scalar_t__ vdev_physical_ashift; scalar_t__ vdev_logical_ashift; scalar_t__ vdev_ashift; scalar_t__ vdev_asize; TYPE_11__* vdev_ops; int * vdev_aux; int vdev_islog; struct TYPE_20__* vdev_top; scalar_t__ vdev_expanding; scalar_t__ vdev_max_asize; scalar_t__ vdev_psize; int * vdev_parent; TYPE_1__** vdev_child; void* vdev_notrim; scalar_t__ vdev_ishole; scalar_t__ vdev_degraded; scalar_t__ vdev_faulted; void* vdev_removed; TYPE_2__ vdev_stat; void* vdev_reopening; scalar_t__ vdev_offline; void* vdev_cant_write; void* vdev_cant_read; TYPE_4__* vdev_spa; } ;
typedef TYPE_3__ vdev_t ;
typedef int vdev_label_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_21__ {scalar_t__ spa_max_ashift; scalar_t__ spa_min_ashift; int spa_scrub_reopen; scalar_t__ spa_autoexpand; } ;
typedef TYPE_4__ spa_t ;
struct TYPE_18__ {scalar_t__ vdev_state; } ;
struct TYPE_17__ {int (* vdev_op_open ) (TYPE_3__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;scalar_t__ vdev_op_leaf; } ;


 int ASSERT (int) ;
 void* B_FALSE ;
 int B_TRUE ;
 int EINVAL ;
 int ENXIO ;
 int EOVERFLOW ;
 void* MAX (scalar_t__,scalar_t__) ;
 scalar_t__ P2ALIGN (scalar_t__,scalar_t__) ;
 int RW_WRITER ;
 scalar_t__ SCL_STATE_ALL ;
 int SET_ERROR (int) ;
 int SPA_ASYNC_RESILVER ;
 scalar_t__ SPA_MAXASHIFT ;
 scalar_t__ SPA_MINDEVSIZE ;
 scalar_t__ VDEV_AUX_ASHIFT_TOO_BIG ;
 scalar_t__ VDEV_AUX_BAD_LABEL ;
 scalar_t__ VDEV_AUX_CHILDREN_OFFLINE ;
 scalar_t__ VDEV_AUX_ERR_EXCEEDED ;
 scalar_t__ VDEV_AUX_EXTERNAL ;
 scalar_t__ VDEV_AUX_NONE ;
 scalar_t__ VDEV_AUX_OPEN_FAILED ;
 scalar_t__ VDEV_AUX_TOO_SMALL ;
 scalar_t__ VDEV_LABEL_END_SIZE ;
 scalar_t__ VDEV_LABEL_START_SIZE ;
 scalar_t__ VDEV_STATE_CANT_OPEN ;
 scalar_t__ VDEV_STATE_CLOSED ;
 scalar_t__ VDEV_STATE_DEGRADED ;
 scalar_t__ VDEV_STATE_FAULTED ;
 scalar_t__ VDEV_STATE_HEALTHY ;
 scalar_t__ VDEV_STATE_OFFLINE ;
 scalar_t__ curthread ;
 int spa_async_request (TYPE_4__*,int ) ;
 scalar_t__ spa_config_held (TYPE_4__*,scalar_t__,int ) ;
 int stub1 (TYPE_3__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int trim_map_create (TYPE_3__*) ;
 scalar_t__ vdev_get_min_asize (TYPE_3__*) ;
 TYPE_11__ vdev_missing_ops ;
 int vdev_probe (TYPE_3__*,int *) ;
 scalar_t__ vdev_resilver_needed (TYPE_3__*,int *,int *) ;
 int vdev_set_min_asize (TYPE_3__*) ;
 int vdev_set_state (TYPE_3__*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ zfs_trim_enabled ;
 int zio_handle_device_injection (TYPE_3__*,int *,int) ;
 scalar_t__ zio_injection_enabled ;
 int zio_wait (int ) ;

int
vdev_open(vdev_t *vd)
{
 spa_t *spa = vd->vdev_spa;
 int error;
 uint64_t osize = 0;
 uint64_t max_osize = 0;
 uint64_t asize, max_asize, psize;
 uint64_t logical_ashift = 0;
 uint64_t physical_ashift = 0;

 ASSERT(vd->vdev_open_thread == curthread ||
     spa_config_held(spa, SCL_STATE_ALL, RW_WRITER) == SCL_STATE_ALL);
 ASSERT(vd->vdev_state == VDEV_STATE_CLOSED ||
     vd->vdev_state == VDEV_STATE_CANT_OPEN ||
     vd->vdev_state == VDEV_STATE_OFFLINE);

 vd->vdev_stat.vs_aux = VDEV_AUX_NONE;
 vd->vdev_cant_read = B_FALSE;
 vd->vdev_cant_write = B_FALSE;
 vd->vdev_notrim = B_FALSE;
 vd->vdev_min_asize = vdev_get_min_asize(vd);





 if (!vd->vdev_removed && vd->vdev_faulted) {
  ASSERT(vd->vdev_children == 0);
  ASSERT(vd->vdev_label_aux == VDEV_AUX_ERR_EXCEEDED ||
      vd->vdev_label_aux == VDEV_AUX_EXTERNAL);
  vdev_set_state(vd, B_TRUE, VDEV_STATE_FAULTED,
      vd->vdev_label_aux);
  return (SET_ERROR(ENXIO));
 } else if (vd->vdev_offline) {
  ASSERT(vd->vdev_children == 0);
  vdev_set_state(vd, B_TRUE, VDEV_STATE_OFFLINE, VDEV_AUX_NONE);
  return (SET_ERROR(ENXIO));
 }

 error = vd->vdev_ops->vdev_op_open(vd, &osize, &max_osize,
     &logical_ashift, &physical_ashift);





 vd->vdev_reopening = B_FALSE;
 if (zio_injection_enabled && error == 0)
  error = zio_handle_device_injection(vd, ((void*)0), ENXIO);

 if (error) {
  if (vd->vdev_removed &&
      vd->vdev_stat.vs_aux != VDEV_AUX_OPEN_FAILED)
   vd->vdev_removed = B_FALSE;

  if (vd->vdev_stat.vs_aux == VDEV_AUX_CHILDREN_OFFLINE) {
   vdev_set_state(vd, B_TRUE, VDEV_STATE_OFFLINE,
       vd->vdev_stat.vs_aux);
  } else {
   vdev_set_state(vd, B_TRUE, VDEV_STATE_CANT_OPEN,
       vd->vdev_stat.vs_aux);
  }
  return (error);
 }

 vd->vdev_removed = B_FALSE;





 if (vd->vdev_faulted) {
  ASSERT(vd->vdev_children == 0);
  ASSERT(vd->vdev_label_aux == VDEV_AUX_ERR_EXCEEDED ||
      vd->vdev_label_aux == VDEV_AUX_EXTERNAL);
  vdev_set_state(vd, B_TRUE, VDEV_STATE_FAULTED,
      vd->vdev_label_aux);
  return (SET_ERROR(ENXIO));
 }

 if (vd->vdev_degraded) {
  ASSERT(vd->vdev_children == 0);
  vdev_set_state(vd, B_TRUE, VDEV_STATE_DEGRADED,
      VDEV_AUX_ERR_EXCEEDED);
 } else {
  vdev_set_state(vd, B_TRUE, VDEV_STATE_HEALTHY, 0);
 }




 if (vd->vdev_ishole || vd->vdev_ops == &vdev_missing_ops)
  return (0);

 if (zfs_trim_enabled && !vd->vdev_notrim && vd->vdev_ops->vdev_op_leaf)
  trim_map_create(vd);

 for (int c = 0; c < vd->vdev_children; c++) {
  if (vd->vdev_child[c]->vdev_state != VDEV_STATE_HEALTHY) {
   vdev_set_state(vd, B_TRUE, VDEV_STATE_DEGRADED,
       VDEV_AUX_NONE);
   break;
  }
 }

 osize = P2ALIGN(osize, (uint64_t)sizeof (vdev_label_t));
 max_osize = P2ALIGN(max_osize, (uint64_t)sizeof (vdev_label_t));

 if (vd->vdev_children == 0) {
  if (osize < SPA_MINDEVSIZE) {
   vdev_set_state(vd, B_TRUE, VDEV_STATE_CANT_OPEN,
       VDEV_AUX_TOO_SMALL);
   return (SET_ERROR(EOVERFLOW));
  }
  psize = osize;
  asize = osize - (VDEV_LABEL_START_SIZE + VDEV_LABEL_END_SIZE);
  max_asize = max_osize - (VDEV_LABEL_START_SIZE +
      VDEV_LABEL_END_SIZE);
 } else {
  if (vd->vdev_parent != ((void*)0) && osize < SPA_MINDEVSIZE -
      (VDEV_LABEL_START_SIZE + VDEV_LABEL_END_SIZE)) {
   vdev_set_state(vd, B_TRUE, VDEV_STATE_CANT_OPEN,
       VDEV_AUX_TOO_SMALL);
   return (SET_ERROR(EOVERFLOW));
  }
  psize = 0;
  asize = osize;
  max_asize = max_osize;
 }

 vd->vdev_psize = psize;




 if (asize < vd->vdev_min_asize) {
  vdev_set_state(vd, B_TRUE, VDEV_STATE_CANT_OPEN,
      VDEV_AUX_BAD_LABEL);
  return (SET_ERROR(EINVAL));
 }

 vd->vdev_physical_ashift =
     MAX(physical_ashift, vd->vdev_physical_ashift);
 vd->vdev_logical_ashift = MAX(logical_ashift, vd->vdev_logical_ashift);
 vd->vdev_ashift = MAX(vd->vdev_logical_ashift, vd->vdev_ashift);

 if (vd->vdev_logical_ashift > SPA_MAXASHIFT) {
  vdev_set_state(vd, B_TRUE, VDEV_STATE_CANT_OPEN,
      VDEV_AUX_ASHIFT_TOO_BIG);
  return (EINVAL);
 }

 if (vd->vdev_asize == 0) {




  vd->vdev_asize = asize;
  vd->vdev_max_asize = max_asize;
 } else {



  if (vd->vdev_ashift > vd->vdev_top->vdev_ashift &&
      vd->vdev_ops->vdev_op_leaf) {
   vdev_set_state(vd, B_TRUE, VDEV_STATE_CANT_OPEN,
       VDEV_AUX_BAD_LABEL);
   return (EINVAL);
  }
  vd->vdev_max_asize = max_asize;
 }
 if (vd->vdev_state == VDEV_STATE_HEALTHY &&
     ((asize > vd->vdev_asize &&
     (vd->vdev_expanding || spa->spa_autoexpand)) ||
     (asize < vd->vdev_asize)))
  vd->vdev_asize = asize;

 vdev_set_min_asize(vd);





 if (vd->vdev_ops->vdev_op_leaf &&
     (error = zio_wait(vdev_probe(vd, ((void*)0)))) != 0) {
  vdev_set_state(vd, B_TRUE, VDEV_STATE_FAULTED,
      VDEV_AUX_ERR_EXCEEDED);
  return (error);
 }




 if (vd->vdev_top == vd && vd->vdev_ashift != 0 &&
     !vd->vdev_islog && vd->vdev_aux == ((void*)0)) {
  if (vd->vdev_ashift > spa->spa_max_ashift)
   spa->spa_max_ashift = vd->vdev_ashift;
  if (vd->vdev_ashift < spa->spa_min_ashift)
   spa->spa_min_ashift = vd->vdev_ashift;
 }






 if (vd->vdev_ops->vdev_op_leaf && !spa->spa_scrub_reopen &&
     vdev_resilver_needed(vd, ((void*)0), ((void*)0)))
  spa_async_request(spa, SPA_ASYNC_RESILVER);

 return (0);
}
