
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ vdev_initialize_state; int vdev_initialize_lock; TYPE_2__* vdev_top; int * vdev_initialize_thread; TYPE_1__* vdev_ops; scalar_t__ vdev_detached; } ;
typedef TYPE_3__ vdev_t ;
typedef int uint64_t ;
struct TYPE_17__ {int spa_dsl_pool; } ;
typedef TYPE_4__ spa_t ;
struct TYPE_15__ {scalar_t__ vdev_removing; } ;
struct TYPE_14__ {int vdev_op_leaf; } ;


 int B_FALSE ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int EROFS ;
 int ESRCH ;
 int FTAG ;



 int RW_READER ;
 int SCL_CONFIG ;
 int SCL_STATE ;
 int SET_ERROR (int ) ;
 scalar_t__ VDEV_INITIALIZE_ACTIVE ;
 scalar_t__ VDEV_INITIALIZE_CANCELED ;
 scalar_t__ VDEV_INITIALIZE_SUSPENDED ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int panic (char*,unsigned long long) ;
 int spa_config_enter (TYPE_4__*,int,int ,int ) ;
 int spa_config_exit (TYPE_4__*,int,int ) ;
 TYPE_3__* spa_lookup_by_guid (TYPE_4__*,int,int ) ;
 int spa_namespace_lock ;
 int txg_wait_synced (int ,int ) ;
 int vdev_initialize (TYPE_3__*) ;
 int vdev_initialize_stop (TYPE_3__*,scalar_t__) ;
 int vdev_is_concrete (TYPE_3__*) ;
 int vdev_writeable (TYPE_3__*) ;

int
spa_vdev_initialize(spa_t *spa, uint64_t guid, uint64_t cmd_type)
{







 mutex_enter(&spa_namespace_lock);
 spa_config_enter(spa, SCL_CONFIG | SCL_STATE, FTAG, RW_READER);


 vdev_t *vd = spa_lookup_by_guid(spa, guid, B_FALSE);
 if (vd == ((void*)0) || vd->vdev_detached) {
  spa_config_exit(spa, SCL_CONFIG | SCL_STATE, FTAG);
  mutex_exit(&spa_namespace_lock);
  return (SET_ERROR(ENODEV));
 } else if (!vd->vdev_ops->vdev_op_leaf || !vdev_is_concrete(vd)) {
  spa_config_exit(spa, SCL_CONFIG | SCL_STATE, FTAG);
  mutex_exit(&spa_namespace_lock);
  return (SET_ERROR(EINVAL));
 } else if (!vdev_writeable(vd)) {
  spa_config_exit(spa, SCL_CONFIG | SCL_STATE, FTAG);
  mutex_exit(&spa_namespace_lock);
  return (SET_ERROR(EROFS));
 }
 mutex_enter(&vd->vdev_initialize_lock);
 spa_config_exit(spa, SCL_CONFIG | SCL_STATE, FTAG);
 if (cmd_type == 129 &&
     (vd->vdev_initialize_thread != ((void*)0) ||
     vd->vdev_top->vdev_removing)) {
  mutex_exit(&vd->vdev_initialize_lock);
  mutex_exit(&spa_namespace_lock);
  return (SET_ERROR(EBUSY));
 } else if (cmd_type == 130 &&
     (vd->vdev_initialize_state != VDEV_INITIALIZE_ACTIVE &&
     vd->vdev_initialize_state != VDEV_INITIALIZE_SUSPENDED)) {
  mutex_exit(&vd->vdev_initialize_lock);
  mutex_exit(&spa_namespace_lock);
  return (SET_ERROR(ESRCH));
 } else if (cmd_type == 128 &&
     vd->vdev_initialize_state != VDEV_INITIALIZE_ACTIVE) {
  mutex_exit(&vd->vdev_initialize_lock);
  mutex_exit(&spa_namespace_lock);
  return (SET_ERROR(ESRCH));
 }

 switch (cmd_type) {
 case 129:
  vdev_initialize(vd);
  break;
 case 130:
  vdev_initialize_stop(vd, VDEV_INITIALIZE_CANCELED);
  break;
 case 128:
  vdev_initialize_stop(vd, VDEV_INITIALIZE_SUSPENDED);
  break;
 default:
  panic("invalid cmd_type %llu", (unsigned long long)cmd_type);
 }
 mutex_exit(&vd->vdev_initialize_lock);


 txg_wait_synced(spa->spa_dsl_pool, 0);
 mutex_exit(&spa_namespace_lock);

 return (0);
}
