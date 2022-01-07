
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zilog_t ;
typedef int zbookmark_phys_t ;
struct bptree_args {int (* ba_func ) (int ,int const*,int ) ;TYPE_1__* ba_phys; scalar_t__ ba_free; int ba_tx; int ba_arg; } ;
typedef int spa_t ;
typedef int dnode_phys_t ;
typedef int blkptr_t ;
struct TYPE_2__ {int bt_uncomp; int bt_comp; int bt_bytes; } ;


 scalar_t__ BP_GET_PSIZE (int const*) ;
 scalar_t__ BP_GET_UCSIZE (int const*) ;
 scalar_t__ BP_IS_HOLE (int const*) ;
 scalar_t__ bp_get_dsize_sync (int *,int const*) ;
 int stub1 (int ,int const*,int ) ;

__attribute__((used)) static int
bptree_visit_cb(spa_t *spa, zilog_t *zilog, const blkptr_t *bp,
    const zbookmark_phys_t *zb, const dnode_phys_t *dnp, void *arg)
{
 int err;
 struct bptree_args *ba = arg;

 if (bp == ((void*)0) || BP_IS_HOLE(bp))
  return (0);

 err = ba->ba_func(ba->ba_arg, bp, ba->ba_tx);
 if (err == 0 && ba->ba_free) {
  ba->ba_phys->bt_bytes -= bp_get_dsize_sync(spa, bp);
  ba->ba_phys->bt_comp -= BP_GET_PSIZE(bp);
  ba->ba_phys->bt_uncomp -= BP_GET_UCSIZE(bp);
 }
 return (err);
}
