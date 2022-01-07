
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_t ;


 int zio_nowait (int ) ;
 int zio_unique_parent (int *) ;

__attribute__((used)) static void
spa_vdev_copy_segment_read_done(zio_t *zio)
{
 zio_nowait(zio_unique_parent(zio));
}
