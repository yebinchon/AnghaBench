
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* spa_config_lock; } ;
typedef TYPE_1__ spa_t ;
struct TYPE_5__ {int scl_lock; int scl_cv; int * scl_writer; int scl_count; } ;
typedef TYPE_2__ spa_config_lock_t ;


 int ASSERT (int) ;
 int SCL_LOCKS ;
 int * curthread ;
 int cv_broadcast (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zfs_refcount_is_zero (int *) ;
 scalar_t__ zfs_refcount_remove (int *,void*) ;

void
spa_config_exit(spa_t *spa, int locks, void *tag)
{
 for (int i = SCL_LOCKS - 1; i >= 0; i--) {
  spa_config_lock_t *scl = &spa->spa_config_lock[i];
  if (!(locks & (1 << i)))
   continue;
  mutex_enter(&scl->scl_lock);
  ASSERT(!zfs_refcount_is_zero(&scl->scl_count));
  if (zfs_refcount_remove(&scl->scl_count, tag) == 0) {
   ASSERT(scl->scl_writer == ((void*)0) ||
       scl->scl_writer == curthread);
   scl->scl_writer = ((void*)0);
   cv_broadcast(&scl->scl_cv);
  }
  mutex_exit(&scl->scl_lock);
 }
}
