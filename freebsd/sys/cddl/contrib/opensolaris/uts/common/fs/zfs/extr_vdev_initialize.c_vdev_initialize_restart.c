
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ vdev_leaf_zap; size_t vdev_initialize_state; size_t vdev_children; struct TYPE_7__** vdev_child; int vdev_initialize_lock; scalar_t__ vdev_offline; scalar_t__ vdev_initialize_action_time; TYPE_6__* vdev_spa; } ;
typedef TYPE_1__ vdev_t ;
typedef size_t uint64_t ;
typedef int timestamp ;
typedef scalar_t__ time_t ;
typedef int initialize_state ;
struct TYPE_8__ {int spa_meta_objset; } ;


 int ASSERT (int) ;
 int ENOENT ;
 int MUTEX_HELD (int *) ;
 int RW_WRITER ;
 int SCL_ALL ;
 size_t VDEV_INITIALIZE_ACTIVE ;
 size_t VDEV_INITIALIZE_NONE ;
 size_t VDEV_INITIALIZE_SUSPENDED ;
 int VDEV_LEAF_ZAP_INITIALIZE_ACTION_TIME ;
 int VDEV_LEAF_ZAP_INITIALIZE_STATE ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_config_held (TYPE_6__*,int ,int ) ;
 int spa_namespace_lock ;
 int vdev_initialize (TYPE_1__*) ;
 int vdev_initialize_load (TYPE_1__*) ;
 scalar_t__ vdev_writeable (TYPE_1__*) ;
 int zap_lookup (int ,scalar_t__,int ,int,int,size_t*) ;

void
vdev_initialize_restart(vdev_t *vd)
{
 ASSERT(MUTEX_HELD(&spa_namespace_lock));
 ASSERT(!spa_config_held(vd->vdev_spa, SCL_ALL, RW_WRITER));

 if (vd->vdev_leaf_zap != 0) {
  mutex_enter(&vd->vdev_initialize_lock);
  uint64_t initialize_state = VDEV_INITIALIZE_NONE;
  int err = zap_lookup(vd->vdev_spa->spa_meta_objset,
      vd->vdev_leaf_zap, VDEV_LEAF_ZAP_INITIALIZE_STATE,
      sizeof (initialize_state), 1, &initialize_state);
  ASSERT(err == 0 || err == ENOENT);
  vd->vdev_initialize_state = initialize_state;

  uint64_t timestamp = 0;
  err = zap_lookup(vd->vdev_spa->spa_meta_objset,
      vd->vdev_leaf_zap, VDEV_LEAF_ZAP_INITIALIZE_ACTION_TIME,
      sizeof (timestamp), 1, &timestamp);
  ASSERT(err == 0 || err == ENOENT);
  vd->vdev_initialize_action_time = (time_t)timestamp;

  if (vd->vdev_initialize_state == VDEV_INITIALIZE_SUSPENDED ||
      vd->vdev_offline) {

   vdev_initialize_load(vd);
  } else if (vd->vdev_initialize_state ==
      VDEV_INITIALIZE_ACTIVE && vdev_writeable(vd)) {
   vdev_initialize(vd);
  }

  mutex_exit(&vd->vdev_initialize_lock);
 }

 for (uint64_t i = 0; i < vd->vdev_children; i++) {
  vdev_initialize_restart(vd->vdev_child[i]);
 }
}
