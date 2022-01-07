
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int io_flags; scalar_t__ io_child_type; scalar_t__ io_stage; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_14__ {int spa_suspend_lock; TYPE_1__* spa_suspend_zio_root; int spa_suspended; } ;
typedef TYPE_2__ spa_t ;


 int ASSERT (int) ;
 int B_TRUE ;
 int FM_EREPORT_ZFS_IO_FAILURE ;
 scalar_t__ ZIO_CHILD_LOGICAL ;
 scalar_t__ ZIO_FAILURE_MODE_PANIC ;
 int ZIO_FLAG_CANFAIL ;
 int ZIO_FLAG_GODFATHER ;
 int ZIO_FLAG_SPECULATIVE ;
 scalar_t__ ZIO_STAGE_DONE ;
 int fm_panic (char*,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ spa_get_failmode (TYPE_2__*) ;
 int spa_name (TYPE_2__*) ;
 int zfs_ereport_post (int ,TYPE_2__*,int *,int *,int ,int ) ;
 int zio_add_child (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* zio_root (TYPE_2__*,int *,int *,int) ;
 int * zio_unique_parent (TYPE_1__*) ;

void
zio_suspend(spa_t *spa, zio_t *zio)
{
 if (spa_get_failmode(spa) == ZIO_FAILURE_MODE_PANIC)
  fm_panic("Pool '%s' has encountered an uncorrectable I/O "
      "failure and the failure mode property for this pool "
      "is set to panic.", spa_name(spa));

 zfs_ereport_post(FM_EREPORT_ZFS_IO_FAILURE, spa, ((void*)0), ((void*)0), 0, 0);

 mutex_enter(&spa->spa_suspend_lock);

 if (spa->spa_suspend_zio_root == ((void*)0))
  spa->spa_suspend_zio_root = zio_root(spa, ((void*)0), ((void*)0),
      ZIO_FLAG_CANFAIL | ZIO_FLAG_SPECULATIVE |
      ZIO_FLAG_GODFATHER);

 spa->spa_suspended = B_TRUE;

 if (zio != ((void*)0)) {
  ASSERT(!(zio->io_flags & ZIO_FLAG_GODFATHER));
  ASSERT(zio != spa->spa_suspend_zio_root);
  ASSERT(zio->io_child_type == ZIO_CHILD_LOGICAL);
  ASSERT(zio_unique_parent(zio) == ((void*)0));
  ASSERT(zio->io_stage == ZIO_STAGE_DONE);
  zio_add_child(spa->spa_suspend_zio_root, zio);
 }

 mutex_exit(&spa->spa_suspend_lock);
}
