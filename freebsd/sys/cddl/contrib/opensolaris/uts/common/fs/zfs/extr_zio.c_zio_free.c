
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint64_t ;
struct TYPE_7__ {size_t spa_syncing_txg; int * spa_free_bplist; } ;
typedef TYPE_1__ spa_t ;
typedef int blkptr_t ;


 scalar_t__ BP_GET_DEDUP (int const*) ;
 int BP_GET_PSIZE (int const*) ;
 scalar_t__ BP_IS_EMBEDDED (int const*) ;
 scalar_t__ BP_IS_GANG (int const*) ;
 size_t TXG_MASK ;
 int VERIFY0 (int ) ;
 int bplist_append (int *,int const*) ;
 int metaslab_check_free (TYPE_1__*,int const*) ;
 scalar_t__ spa_sync_pass (TYPE_1__*) ;
 int zfs_blkptr_verify (TYPE_1__*,int const*) ;
 scalar_t__ zfs_sync_pass_deferred_free ;
 scalar_t__ zfs_trim_enabled ;
 int zio_free_sync (int *,TYPE_1__*,size_t,int const*,int ,int ) ;
 int zio_wait (int ) ;

void
zio_free(spa_t *spa, uint64_t txg, const blkptr_t *bp)
{

 zfs_blkptr_verify(spa, bp);






 if (BP_IS_EMBEDDED(bp))
  return;
 metaslab_check_free(spa, bp);







 if (zfs_trim_enabled || BP_IS_GANG(bp) || BP_GET_DEDUP(bp) ||
     txg != spa->spa_syncing_txg ||
     spa_sync_pass(spa) >= zfs_sync_pass_deferred_free) {
  bplist_append(&spa->spa_free_bplist[txg & TXG_MASK], bp);
 } else {
  VERIFY0(zio_wait(zio_free_sync(((void*)0), spa, txg, bp,
      BP_GET_PSIZE(bp), 0)));
 }
}
