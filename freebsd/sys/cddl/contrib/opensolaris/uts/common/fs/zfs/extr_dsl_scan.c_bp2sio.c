
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sio_cksum; int sio_birth; int sio_phys_birth; int sio_blk_prop; int sio_asize; int sio_offset; } ;
typedef TYPE_1__ scan_io_t ;
struct TYPE_6__ {int blk_cksum; int blk_birth; int blk_phys_birth; int blk_prop; int * blk_dva; } ;
typedef TYPE_2__ blkptr_t ;


 int DVA_GET_ASIZE (int *) ;
 int DVA_GET_OFFSET (int *) ;

__attribute__((used)) static inline void
bp2sio(const blkptr_t *bp, scan_io_t *sio, int dva_i)
{

 sio->sio_offset = DVA_GET_OFFSET(&bp->blk_dva[dva_i]);
 sio->sio_asize = DVA_GET_ASIZE(&bp->blk_dva[dva_i]);
 sio->sio_blk_prop = bp->blk_prop;
 sio->sio_phys_birth = bp->blk_phys_birth;
 sio->sio_birth = bp->blk_birth;
 sio->sio_cksum = bp->blk_cksum;
}
