
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int v_psize; } ;
typedef TYPE_1__ vdev_t ;
typedef int uint64_t ;
typedef int off_t ;
struct TYPE_13__ {int blk_cksum; } ;
typedef TYPE_2__ blkptr_t ;


 int BP_IDENTITY (TYPE_2__*) ;
 int BP_SET_CHECKSUM (TYPE_2__*,int ) ;
 int BP_SET_COMPRESS (TYPE_2__*,int ) ;
 int BP_SET_LSIZE (TYPE_2__*,size_t) ;
 int BP_SET_PSIZE (TYPE_2__*,size_t) ;
 int BP_ZERO (TYPE_2__*) ;
 int DVA_SET_OFFSET (int ,int ) ;
 int ZIO_CHECKSUM_LABEL ;
 int ZIO_COMPRESS_OFF ;
 int ZIO_SET_CHECKSUM (int *,int ,int ,int ,int ) ;
 int vdev_label_offset (int ,int,int ) ;
 int vdev_read_phys (TYPE_1__*,TYPE_2__*,void*,int ,size_t) ;

__attribute__((used)) static int
vdev_label_read(vdev_t *vd, int l, void *buf, uint64_t offset,
    size_t size)
{
 blkptr_t bp;
 off_t off;

 off = vdev_label_offset(vd->v_psize, l, offset);

 BP_ZERO(&bp);
 BP_SET_LSIZE(&bp, size);
 BP_SET_PSIZE(&bp, size);
 BP_SET_CHECKSUM(&bp, ZIO_CHECKSUM_LABEL);
 BP_SET_COMPRESS(&bp, ZIO_COMPRESS_OFF);
 DVA_SET_OFFSET(BP_IDENTITY(&bp), off);
 ZIO_SET_CHECKSUM(&bp.blk_cksum, off, 0, 0, 0);

 return (vdev_read_phys(vd, &bp, buf, off, size));
}
