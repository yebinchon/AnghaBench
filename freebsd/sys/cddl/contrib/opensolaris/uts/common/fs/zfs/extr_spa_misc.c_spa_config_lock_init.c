
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* spa_config_lock; } ;
typedef TYPE_1__ spa_t ;
struct TYPE_5__ {scalar_t__ scl_write_wanted; int * scl_writer; int scl_count; int scl_cv; int scl_lock; } ;
typedef TYPE_2__ spa_config_lock_t ;


 int CV_DEFAULT ;
 int MUTEX_DEFAULT ;
 int SCL_LOCKS ;
 int cv_init (int *,int *,int ,int *) ;
 int mutex_init (int *,int *,int ,int *) ;
 int zfs_refcount_create_untracked (int *) ;

__attribute__((used)) static void
spa_config_lock_init(spa_t *spa)
{
 for (int i = 0; i < SCL_LOCKS; i++) {
  spa_config_lock_t *scl = &spa->spa_config_lock[i];
  mutex_init(&scl->scl_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));
  cv_init(&scl->scl_cv, ((void*)0), CV_DEFAULT, ((void*)0));
  zfs_refcount_create_untracked(&scl->scl_count);
  scl->scl_writer = ((void*)0);
  scl->scl_write_wanted = 0;
 }
}
