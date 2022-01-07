
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int sio_cksum; int sio_birth; int sio_phys_birth; int sio_blk_prop; int sio_offset; int sio_asize; } ;
typedef TYPE_1__ scan_io_t ;
struct TYPE_7__ {int blk_fill; int blk_cksum; int blk_birth; int blk_phys_birth; int blk_prop; int * blk_dva; } ;
typedef TYPE_2__ blkptr_t ;


 int DVA_SET_ASIZE (int *,int ) ;
 int DVA_SET_OFFSET (int *,int ) ;
 int DVA_SET_VDEV (int *,int ) ;
 int bzero (TYPE_2__*,int) ;

__attribute__((used)) static inline void
sio2bp(const scan_io_t *sio, blkptr_t *bp, uint64_t vdev_id)
{
 bzero(bp, sizeof (*bp));
 DVA_SET_ASIZE(&bp->blk_dva[0], sio->sio_asize);
 DVA_SET_VDEV(&bp->blk_dva[0], vdev_id);
 DVA_SET_OFFSET(&bp->blk_dva[0], sio->sio_offset);
 bp->blk_prop = sio->sio_blk_prop;
 bp->blk_phys_birth = sio->sio_phys_birth;
 bp->blk_birth = sio->sio_birth;
 bp->blk_fill = 1;
 bp->blk_cksum = sio->sio_cksum;
}
