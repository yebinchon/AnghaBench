
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ io_txg; int io_spa; int * io_bp_override; } ;
typedef TYPE_2__ zio_t ;
struct TYPE_12__ {TYPE_1__* gn_gbh; struct TYPE_12__** gn_child; } ;
typedef TYPE_3__ zio_gang_node_t ;
struct TYPE_13__ {scalar_t__ blk_birth; } ;
typedef TYPE_4__ blkptr_t ;
struct TYPE_10__ {TYPE_4__* zg_blkptr; } ;


 int ASSERT (int) ;
 scalar_t__ BP_IS_HOLE (TYPE_4__*) ;
 int B_TRUE ;
 int SPA_GBH_NBLKPTRS ;
 int metaslab_free (int ,TYPE_4__*,scalar_t__,int ) ;

__attribute__((used)) static void
zio_dva_unallocate(zio_t *zio, zio_gang_node_t *gn, blkptr_t *bp)
{
 ASSERT(bp->blk_birth == zio->io_txg || BP_IS_HOLE(bp));
 ASSERT(zio->io_bp_override == ((void*)0));

 if (!BP_IS_HOLE(bp))
  metaslab_free(zio->io_spa, bp, bp->blk_birth, B_TRUE);

 if (gn != ((void*)0)) {
  for (int g = 0; g < SPA_GBH_NBLKPTRS; g++) {
   zio_dva_unallocate(zio, gn->gn_child[g],
       &gn->gn_gbh->zg_blkptr[g]);
  }
 }
}
