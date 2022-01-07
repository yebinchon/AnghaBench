
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int rl_lock; int rl_tree; } ;
typedef TYPE_1__ rangelock_t ;
struct TYPE_9__ {scalar_t__ lr_type; int lr_count; int lr_read_cv; scalar_t__ lr_read_wanted; int lr_write_cv; scalar_t__ lr_write_wanted; int lr_proxy; TYPE_1__* lr_rangelock; } ;
typedef TYPE_2__ locked_range_t ;


 int ASSERT (int) ;
 scalar_t__ RL_READER ;
 scalar_t__ RL_WRITER ;
 int avl_remove (int *,TYPE_2__*) ;
 int cv_broadcast (int *) ;
 int cv_destroy (int *) ;
 int kmem_free (TYPE_2__*,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int rangelock_exit_reader (TYPE_1__*,TYPE_2__*) ;

void
rangelock_exit(locked_range_t *lr)
{
 rangelock_t *rl = lr->lr_rangelock;

 ASSERT(lr->lr_type == RL_WRITER || lr->lr_type == RL_READER);
 ASSERT(lr->lr_count == 1 || lr->lr_count == 0);
 ASSERT(!lr->lr_proxy);

 mutex_enter(&rl->rl_lock);
 if (lr->lr_type == RL_WRITER) {

  avl_remove(&rl->rl_tree, lr);
  mutex_exit(&rl->rl_lock);
  if (lr->lr_write_wanted) {
   cv_broadcast(&lr->lr_write_cv);
   cv_destroy(&lr->lr_write_cv);
  }
  if (lr->lr_read_wanted) {
   cv_broadcast(&lr->lr_read_cv);
   cv_destroy(&lr->lr_read_cv);
  }
  kmem_free(lr, sizeof (locked_range_t));
 } else {




  rangelock_exit_reader(rl, lr);
  mutex_exit(&rl->rl_lock);
 }
}
