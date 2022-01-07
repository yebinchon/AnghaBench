
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


 int ZIO_FLAG_IO_REWRITE ;
 int ZIO_REWRITE_PIPELINE ;
 int ZIO_STAGE_OPEN ;
 int ZIO_TYPE_WRITE ;
 int * zio_create (int *,int *,int ,int *,int *,int ,int ,int *,void*,int ,int ,int,int *,int ,int *,int ,int ) ;

zio_t *
zio_rewrite(zio_t *pio, spa_t *spa, uint64_t txg, blkptr_t *bp, abd_t *data,
    uint64_t size, zio_done_func_t *done, void *private,
    zio_priority_t priority, enum zio_flag flags, zbookmark_phys_t *zb)
{
 zio_t *zio;

 zio = zio_create(pio, spa, txg, bp, data, size, size, done, private,
     ZIO_TYPE_WRITE, priority, flags | ZIO_FLAG_IO_REWRITE, ((void*)0), 0, zb,
     ZIO_STAGE_OPEN, ZIO_REWRITE_PIPELINE);

 return (zio);
}
