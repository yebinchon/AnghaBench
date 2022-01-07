
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef enum zio_checksum { ____Placeholder_zio_checksum } zio_checksum ;
struct TYPE_21__ {int ddp_phys_birth; } ;
typedef TYPE_1__ ddt_phys_t ;
struct TYPE_22__ {int ddk_cksum; } ;
typedef TYPE_2__ ddt_key_t ;
struct TYPE_23__ {int blk_fill; int blk_cksum; } ;
typedef TYPE_3__ blkptr_t ;


 int BP_SET_BYTEORDER (TYPE_3__*,int ) ;
 int BP_SET_CHECKSUM (TYPE_3__*,int) ;
 int BP_SET_COMPRESS (TYPE_3__*,int ) ;
 int BP_SET_DEDUP (TYPE_3__*,int ) ;
 int BP_SET_LEVEL (TYPE_3__*,int ) ;
 int BP_SET_LSIZE (TYPE_3__*,int ) ;
 int BP_SET_PSIZE (TYPE_3__*,int ) ;
 int BP_SET_TYPE (TYPE_3__*,int ) ;
 int BP_ZERO (TYPE_3__*) ;
 int DDK_GET_COMPRESS (TYPE_2__ const*) ;
 int DDK_GET_LSIZE (TYPE_2__ const*) ;
 int DDK_GET_PSIZE (TYPE_2__ const*) ;
 int DMU_OT_DEDUP ;
 int ZFS_HOST_BYTEORDER ;
 int ddt_bp_fill (TYPE_1__ const*,TYPE_3__*,int ) ;

void
ddt_bp_create(enum zio_checksum checksum,
    const ddt_key_t *ddk, const ddt_phys_t *ddp, blkptr_t *bp)
{
 BP_ZERO(bp);

 if (ddp != ((void*)0))
  ddt_bp_fill(ddp, bp, ddp->ddp_phys_birth);

 bp->blk_cksum = ddk->ddk_cksum;
 bp->blk_fill = 1;

 BP_SET_LSIZE(bp, DDK_GET_LSIZE(ddk));
 BP_SET_PSIZE(bp, DDK_GET_PSIZE(ddk));
 BP_SET_COMPRESS(bp, DDK_GET_COMPRESS(ddk));
 BP_SET_CHECKSUM(bp, checksum);
 BP_SET_TYPE(bp, DMU_OT_DEDUP);
 BP_SET_LEVEL(bp, 0);
 BP_SET_DEDUP(bp, 0);
 BP_SET_BYTEORDER(bp, ZFS_HOST_BYTEORDER);
}
