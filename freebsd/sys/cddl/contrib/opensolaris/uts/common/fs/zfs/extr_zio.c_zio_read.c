
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_t ;
typedef int zio_priority_t ;
typedef int zio_done_func_t ;
typedef int zbookmark_phys_t ;
typedef int uint64_t ;
typedef int spa_t ;
typedef enum zio_flag { ____Placeholder_zio_flag } zio_flag ;
typedef int blkptr_t ;
typedef int abd_t ;


 int BP_PHYSICAL_BIRTH (int const*) ;
 int ZIO_DDT_CHILD_READ_PIPELINE ;
 int ZIO_FLAG_DDT_CHILD ;
 int ZIO_READ_PIPELINE ;
 int ZIO_STAGE_OPEN ;
 int ZIO_TYPE_READ ;
 int zfs_blkptr_verify (int *,int const*) ;
 int * zio_create (int *,int *,int ,int const*,int *,int ,int ,int *,void*,int ,int ,int,int *,int ,int const*,int ,int ) ;

zio_t *
zio_read(zio_t *pio, spa_t *spa, const blkptr_t *bp,
    abd_t *data, uint64_t size, zio_done_func_t *done, void *private,
    zio_priority_t priority, enum zio_flag flags, const zbookmark_phys_t *zb)
{
 zio_t *zio;

 zfs_blkptr_verify(spa, bp);

 zio = zio_create(pio, spa, BP_PHYSICAL_BIRTH(bp), bp,
     data, size, size, done, private,
     ZIO_TYPE_READ, priority, flags, ((void*)0), 0, zb,
     ZIO_STAGE_OPEN, (flags & ZIO_FLAG_DDT_CHILD) ?
     ZIO_DDT_CHILD_READ_PIPELINE : ZIO_READ_PIPELINE);

 return (zio);
}
