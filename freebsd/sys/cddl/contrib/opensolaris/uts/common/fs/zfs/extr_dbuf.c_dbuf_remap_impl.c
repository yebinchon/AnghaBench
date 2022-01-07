
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int spa_t ;
struct TYPE_8__ {int dn_struct_rwlock; int dn_objset; } ;
typedef TYPE_1__ dnode_t ;
typedef int dmu_tx_t ;
struct TYPE_9__ {int * drica_tx; int drica_blk_birth; int drica_os; } ;
typedef TYPE_2__ dbuf_remap_impl_callback_arg_t ;
struct TYPE_10__ {int blk_birth; } ;
typedef TYPE_3__ blkptr_t ;


 int ASSERT (int ) ;
 int RW_WRITER ;
 int dbuf_remap_impl_callback ;
 int * dmu_objset_spa (int ) ;
 int dsl_pool_sync_context (int ) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int spa_get_dsl (int *) ;
 scalar_t__ spa_remap_blkptr (int *,TYPE_3__*,int ,TYPE_2__*) ;

__attribute__((used)) static void
dbuf_remap_impl(dnode_t *dn, blkptr_t *bp, dmu_tx_t *tx)
{
 blkptr_t bp_copy = *bp;
 spa_t *spa = dmu_objset_spa(dn->dn_objset);
 dbuf_remap_impl_callback_arg_t drica;

 ASSERT(dsl_pool_sync_context(spa_get_dsl(spa)));

 drica.drica_os = dn->dn_objset;
 drica.drica_blk_birth = bp->blk_birth;
 drica.drica_tx = tx;
 if (spa_remap_blkptr(spa, &bp_copy, dbuf_remap_impl_callback,
     &drica)) {






  rw_enter(&dn->dn_struct_rwlock, RW_WRITER);
  *bp = bp_copy;
  rw_exit(&dn->dn_struct_rwlock);
 }
}
