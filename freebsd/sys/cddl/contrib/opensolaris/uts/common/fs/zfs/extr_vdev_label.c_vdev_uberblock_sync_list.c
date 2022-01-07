
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int zio_t ;
struct TYPE_6__ {int * vdev_spa; } ;
typedef TYPE_1__ vdev_t ;
typedef int uint64_t ;
typedef int uberblock_t ;
typedef int spa_t ;


 int EIO ;
 int vdev_uberblock_sync (int *,int*,int *,TYPE_1__*,int) ;
 scalar_t__ vdev_writeable (TYPE_1__*) ;
 int zio_flush (int *,TYPE_1__*) ;
 int * zio_root (int *,int *,int *,int) ;
 int zio_wait (int *) ;

int
vdev_uberblock_sync_list(vdev_t **svd, int svdcount, uberblock_t *ub, int flags)
{
 spa_t *spa = svd[0]->vdev_spa;
 zio_t *zio;
 uint64_t good_writes = 0;

 zio = zio_root(spa, ((void*)0), ((void*)0), flags);

 for (int v = 0; v < svdcount; v++)
  vdev_uberblock_sync(zio, &good_writes, ub, svd[v], flags);

 (void) zio_wait(zio);






 zio = zio_root(spa, ((void*)0), ((void*)0), flags);

 for (int v = 0; v < svdcount; v++) {
  if (vdev_writeable(svd[v])) {
   zio_flush(zio, svd[v]);
  }
 }

 (void) zio_wait(zio);

 return (good_writes >= 1 ? 0 : EIO);
}
