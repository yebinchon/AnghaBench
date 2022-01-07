
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int io_bookmark; int io_priority; int io_spa; } ;
typedef TYPE_1__ zio_t ;
typedef int zio_gang_node_t ;
typedef int uint64_t ;
typedef int blkptr_t ;
typedef int abd_t ;


 int BP_GET_PSIZE (int *) ;
 int ZIO_GANG_CHILD_FLAGS (TYPE_1__*) ;
 int abd_get_offset (int *,int ) ;
 int zio_gang_issue_func_done ;
 TYPE_1__* zio_read (TYPE_1__*,int ,int *,int ,int ,int ,int *,int ,int ,int *) ;

__attribute__((used)) static zio_t *
zio_read_gang(zio_t *pio, blkptr_t *bp, zio_gang_node_t *gn, abd_t *data,
    uint64_t offset)
{
 if (gn != ((void*)0))
  return (pio);

 return (zio_read(pio, pio->io_spa, bp, abd_get_offset(data, offset),
     BP_GET_PSIZE(bp), zio_gang_issue_func_done,
     ((void*)0), pio->io_priority, ZIO_GANG_CHILD_FLAGS(pio),
     &pio->io_bookmark));
}
