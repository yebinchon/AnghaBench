
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_8__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zio_t ;
struct TYPE_9__ {int spa_root_vdev; int spa_trim_lock; int spa_trim_cv; TYPE_8__* spa_trim_thread; } ;
typedef TYPE_1__ spa_t ;
struct TYPE_10__ {int td_name; } ;


 int FTAG ;
 int RW_READER ;
 int SCL_STATE ;
 int ZIO_FLAG_CANFAIL ;
 TYPE_8__* curthread ;
 int cv_signal (int *) ;
 int cv_timedwait (int *,int *,int) ;
 int hz ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int snprintf (int ,int,char*,char*) ;
 int spa_config_enter (TYPE_1__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_1__*,int ,int ) ;
 char* spa_name (TYPE_1__*) ;
 int thread_exit () ;
 int trim_map_commit (TYPE_1__*,int *,int ) ;
 int trim_map_commit_done (TYPE_1__*,int ) ;
 int trim_max_interval ;
 int * zio_root (TYPE_1__*,int *,int *,int ) ;
 int zio_wait (int *) ;

__attribute__((used)) static void
trim_thread(void *arg)
{
 spa_t *spa = arg;
 zio_t *zio;






 for (;;) {
  mutex_enter(&spa->spa_trim_lock);
  if (spa->spa_trim_thread == ((void*)0)) {
   spa->spa_trim_thread = curthread;
   cv_signal(&spa->spa_trim_cv);
   mutex_exit(&spa->spa_trim_lock);
   thread_exit();
  }

  (void) cv_timedwait(&spa->spa_trim_cv, &spa->spa_trim_lock,
      hz * trim_max_interval);
  mutex_exit(&spa->spa_trim_lock);

  zio = zio_root(spa, ((void*)0), ((void*)0), ZIO_FLAG_CANFAIL);

  spa_config_enter(spa, SCL_STATE, FTAG, RW_READER);
  trim_map_commit(spa, zio, spa->spa_root_vdev);
  (void) zio_wait(zio);
  trim_map_commit_done(spa, spa->spa_root_vdev);
  spa_config_exit(spa, SCL_STATE, FTAG);
 }
}
