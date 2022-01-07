
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ vdev_initialize_inflight; int vdev_initialize_lock; int vdev_initialize_cv; int * vdev_initialize_thread; int vdev_initialize_exit_wanted; int * vdev_initialize_tree; int vdev_initialize_io_lock; int vdev_initialize_io_cv; TYPE_1__* vdev_top; int vdev_detached; scalar_t__ vdev_initialize_last_offset; int * vdev_spa; } ;
typedef TYPE_2__ vdev_t ;
typedef size_t uint64_t ;
typedef int spa_t ;
struct TYPE_16__ {int ms_lock; int ms_allocatable; } ;
typedef TYPE_3__ metaslab_t ;
typedef int abd_t ;
struct TYPE_14__ {size_t vdev_ms_count; TYPE_3__** vdev_ms; } ;


 int ASSERT (int) ;
 int FTAG ;
 int RW_READER ;
 int SCL_CONFIG ;
 int VDEV_INITIALIZE_COMPLETE ;
 int VERIFY0 (int ) ;
 int cv_broadcast (int *) ;
 int cv_wait (int *,int *) ;
 int metaslab_load (TYPE_3__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int * range_tree_create (int *,int *) ;
 int range_tree_destroy (int *) ;
 int range_tree_vacate (int *,int *,int *) ;
 int range_tree_walk (int ,int ,TYPE_2__*) ;
 int spa_config_enter (int *,int ,int ,int ) ;
 int spa_config_exit (int *,int ,int ) ;
 int spa_get_dsl (int *) ;
 int thread_exit () ;
 int txg_wait_synced (int ,int ) ;
 int * vdev_initialize_block_alloc () ;
 int vdev_initialize_block_free (int *) ;
 int vdev_initialize_calculate_progress (TYPE_2__*) ;
 int vdev_initialize_change_state (TYPE_2__*,int ) ;
 int vdev_initialize_load (TYPE_2__*) ;
 int vdev_initialize_ms_mark (TYPE_3__*) ;
 int vdev_initialize_ms_unmark (TYPE_3__*) ;
 int vdev_initialize_range_add ;
 int vdev_initialize_ranges (TYPE_2__*,int *) ;
 int vdev_is_concrete (TYPE_2__*) ;
 scalar_t__ vdev_writeable (TYPE_2__*) ;

__attribute__((used)) static void
vdev_initialize_thread(void *arg)
{
 vdev_t *vd = arg;
 spa_t *spa = vd->vdev_spa;
 int error = 0;
 uint64_t ms_count = 0;

 ASSERT(vdev_is_concrete(vd));
 spa_config_enter(spa, SCL_CONFIG, FTAG, RW_READER);

 vd->vdev_initialize_last_offset = 0;
 vdev_initialize_load(vd);

 abd_t *deadbeef = vdev_initialize_block_alloc();

 vd->vdev_initialize_tree = range_tree_create(((void*)0), ((void*)0));

 for (uint64_t i = 0; !vd->vdev_detached &&
     i < vd->vdev_top->vdev_ms_count; i++) {
  metaslab_t *msp = vd->vdev_top->vdev_ms[i];





  if (vd->vdev_top->vdev_ms_count != ms_count) {
   vdev_initialize_calculate_progress(vd);
   ms_count = vd->vdev_top->vdev_ms_count;
  }

  vdev_initialize_ms_mark(msp);
  mutex_enter(&msp->ms_lock);
  VERIFY0(metaslab_load(msp));

  range_tree_walk(msp->ms_allocatable, vdev_initialize_range_add,
      vd);
  mutex_exit(&msp->ms_lock);

  spa_config_exit(spa, SCL_CONFIG, FTAG);
  error = vdev_initialize_ranges(vd, deadbeef);
  vdev_initialize_ms_unmark(msp);
  spa_config_enter(spa, SCL_CONFIG, FTAG, RW_READER);

  range_tree_vacate(vd->vdev_initialize_tree, ((void*)0), ((void*)0));
  if (error != 0)
   break;
 }

 spa_config_exit(spa, SCL_CONFIG, FTAG);
 mutex_enter(&vd->vdev_initialize_io_lock);
 while (vd->vdev_initialize_inflight > 0) {
  cv_wait(&vd->vdev_initialize_io_cv,
      &vd->vdev_initialize_io_lock);
 }
 mutex_exit(&vd->vdev_initialize_io_lock);

 range_tree_destroy(vd->vdev_initialize_tree);
 vdev_initialize_block_free(deadbeef);
 vd->vdev_initialize_tree = ((void*)0);

 mutex_enter(&vd->vdev_initialize_lock);
 if (!vd->vdev_initialize_exit_wanted && vdev_writeable(vd)) {
  vdev_initialize_change_state(vd, VDEV_INITIALIZE_COMPLETE);
 }
 ASSERT(vd->vdev_initialize_thread != ((void*)0) ||
     vd->vdev_initialize_inflight == 0);
 mutex_exit(&vd->vdev_initialize_lock);
 txg_wait_synced(spa_get_dsl(spa), 0);
 mutex_enter(&vd->vdev_initialize_lock);

 vd->vdev_initialize_thread = ((void*)0);
 cv_broadcast(&vd->vdev_initialize_cv);
 mutex_exit(&vd->vdev_initialize_lock);
 thread_exit();
}
