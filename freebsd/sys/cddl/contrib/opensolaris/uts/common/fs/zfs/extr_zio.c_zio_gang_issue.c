
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t io_child_type; scalar_t__* io_child_error; int io_pipeline; int io_gang_tree; int io_abd; struct TYPE_6__* io_gang_leader; int * io_bp; } ;
typedef TYPE_1__ zio_t ;
typedef int blkptr_t ;


 int ASSERT (int) ;
 scalar_t__ BP_IS_GANG (int *) ;
 size_t ZIO_CHILD_GANG ;
 int ZIO_CHILD_GANG_BIT ;
 int ZIO_INTERLOCK_PIPELINE ;
 int ZIO_WAIT_DONE ;
 int zio_gang_tree_free (int *) ;
 int zio_gang_tree_issue (TYPE_1__*,int ,int *,int ,int ) ;
 scalar_t__ zio_wait_for_children (TYPE_1__*,int ,int ) ;

__attribute__((used)) static zio_t *
zio_gang_issue(zio_t *zio)
{
 blkptr_t *bp = zio->io_bp;

 if (zio_wait_for_children(zio, ZIO_CHILD_GANG_BIT, ZIO_WAIT_DONE)) {
  return (((void*)0));
 }

 ASSERT(BP_IS_GANG(bp) && zio->io_gang_leader == zio);
 ASSERT(zio->io_child_type > ZIO_CHILD_GANG);

 if (zio->io_child_error[ZIO_CHILD_GANG] == 0)
  zio_gang_tree_issue(zio, zio->io_gang_tree, bp, zio->io_abd,
      0);
 else
  zio_gang_tree_free(&zio->io_gang_tree);

 zio->io_pipeline = ZIO_INTERLOCK_PIPELINE;

 return (zio);
}
