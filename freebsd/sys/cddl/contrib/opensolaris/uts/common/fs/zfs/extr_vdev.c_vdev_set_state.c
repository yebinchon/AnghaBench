
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int vs_aux; } ;
struct TYPE_15__ {scalar_t__ vdev_state; int vdev_not_present; scalar_t__ vdev_prevstate; scalar_t__ vdev_parent; TYPE_2__* vdev_ops; void* vdev_removed; scalar_t__ vdev_checkremove; scalar_t__ vdev_forcefault; TYPE_1__ vdev_stat; int vdev_delayed_close; TYPE_4__* vdev_spa; } ;
typedef TYPE_3__ vdev_t ;
typedef scalar_t__ vdev_state_t ;
typedef int vdev_aux_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_16__ {TYPE_3__* spa_root_vdev; } ;
typedef TYPE_4__ spa_t ;
typedef int boolean_t ;
struct TYPE_14__ {scalar_t__ vdev_op_leaf; int (* vdev_op_close ) (TYPE_3__*) ;} ;


 void* B_FALSE ;
 void* B_TRUE ;
 char* FM_EREPORT_ZFS_DEVICE_BAD_GUID_SUM ;
 char* FM_EREPORT_ZFS_DEVICE_BAD_LABEL ;
 char* FM_EREPORT_ZFS_DEVICE_CORRUPT_DATA ;
 char* FM_EREPORT_ZFS_DEVICE_NO_REPLICAS ;
 char* FM_EREPORT_ZFS_DEVICE_OPEN_FAILED ;
 char* FM_EREPORT_ZFS_DEVICE_TOO_SMALL ;
 char* FM_EREPORT_ZFS_DEVICE_UNKNOWN ;
 scalar_t__ SPA_LOAD_IMPORT ;
 scalar_t__ SPA_LOAD_RECOVER ;



 int VDEV_AUX_NONE ;



 scalar_t__ VDEV_STATE_CANT_OPEN ;
 scalar_t__ VDEV_STATE_REMOVED ;
 scalar_t__ spa_load_state (TYPE_4__*) ;
 int stub1 (TYPE_3__*) ;
 scalar_t__ vdev_is_dead (TYPE_3__*) ;
 int vdev_propagate_state (scalar_t__) ;
 int zfs_ereport_post (char const*,TYPE_4__*,TYPE_3__*,int *,scalar_t__,int ) ;
 int zfs_post_state_change (TYPE_4__*,TYPE_3__*) ;

void
vdev_set_state(vdev_t *vd, boolean_t isopen, vdev_state_t state, vdev_aux_t aux)
{
 uint64_t save_state;
 spa_t *spa = vd->vdev_spa;

 if (state == vd->vdev_state) {
  vd->vdev_stat.vs_aux = aux;
  return;
 }

 save_state = vd->vdev_state;

 vd->vdev_state = state;
 vd->vdev_stat.vs_aux = aux;
 if (!vd->vdev_delayed_close && vdev_is_dead(vd) &&
     vd->vdev_ops->vdev_op_leaf)
  vd->vdev_ops->vdev_op_close(vd);

 if (vd->vdev_removed &&
     state == VDEV_STATE_CANT_OPEN &&
     (aux == 129 || vd->vdev_checkremove)) {
  vd->vdev_state = VDEV_STATE_REMOVED;
  vd->vdev_stat.vs_aux = VDEV_AUX_NONE;
 } else if (state == VDEV_STATE_REMOVED) {
  vd->vdev_removed = B_TRUE;
 } else if (state == VDEV_STATE_CANT_OPEN) {






  if ((spa_load_state(spa) == SPA_LOAD_IMPORT ||
      spa_load_state(spa) == SPA_LOAD_RECOVER) &&
      vd->vdev_ops->vdev_op_leaf)
   vd->vdev_not_present = 1;
  if ((vd->vdev_prevstate != state || vd->vdev_forcefault) &&
      !vd->vdev_not_present && !vd->vdev_checkremove &&
      vd != spa->spa_root_vdev) {
   const char *class;

   switch (aux) {
   case 129:
    class = FM_EREPORT_ZFS_DEVICE_OPEN_FAILED;
    break;
   case 131:
    class = FM_EREPORT_ZFS_DEVICE_CORRUPT_DATA;
    break;
   case 130:
    class = FM_EREPORT_ZFS_DEVICE_NO_REPLICAS;
    break;
   case 133:
    class = FM_EREPORT_ZFS_DEVICE_BAD_GUID_SUM;
    break;
   case 128:
    class = FM_EREPORT_ZFS_DEVICE_TOO_SMALL;
    break;
   case 132:
    class = FM_EREPORT_ZFS_DEVICE_BAD_LABEL;
    break;
   default:
    class = FM_EREPORT_ZFS_DEVICE_UNKNOWN;
   }

   zfs_ereport_post(class, spa, vd, ((void*)0), save_state, 0);
  }


  vd->vdev_removed = B_FALSE;
 } else {
  vd->vdev_removed = B_FALSE;
 }
 if (vd->vdev_ops->vdev_op_leaf)
  zfs_post_state_change(spa, vd);

 if (!isopen && vd->vdev_parent)
  vdev_propagate_state(vd->vdev_parent);
}
