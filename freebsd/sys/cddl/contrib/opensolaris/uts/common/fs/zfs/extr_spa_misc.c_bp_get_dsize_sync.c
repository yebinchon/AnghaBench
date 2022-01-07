
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int spa_t ;
struct TYPE_4__ {int * blk_dva; } ;
typedef TYPE_1__ blkptr_t ;


 int BP_GET_NDVAS (TYPE_1__ const*) ;
 scalar_t__ dva_get_dsize_sync (int *,int *) ;

uint64_t
bp_get_dsize_sync(spa_t *spa, const blkptr_t *bp)
{
 uint64_t dsize = 0;

 for (int d = 0; d < BP_GET_NDVAS(bp); d++)
  dsize += dva_get_dsize_sync(spa, &bp->blk_dva[d]);

 return (dsize);
}
