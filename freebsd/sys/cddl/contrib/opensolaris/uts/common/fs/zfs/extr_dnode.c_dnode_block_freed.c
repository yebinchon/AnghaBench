
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int dn_mtx; int ** dn_free_ranges; scalar_t__ dn_free_txg; TYPE_1__* dn_objset; } ;
typedef TYPE_2__ dnode_t ;
struct TYPE_5__ {int os_spa; } ;


 int DMU_BONUS_BLKID ;
 int DMU_SPILL_BLKID ;
 int FALSE ;
 int TRUE ;
 int TXG_SIZE ;
 int dnode_spill_freed (TYPE_2__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ range_tree_contains (int *,int,int) ;
 void* spa_get_dsl (int ) ;

uint64_t
dnode_block_freed(dnode_t *dn, uint64_t blkid)
{
 void *dp = spa_get_dsl(dn->dn_objset->os_spa);
 int i;

 if (blkid == DMU_BONUS_BLKID)
  return (FALSE);





 if (dp == ((void*)0))
  return (FALSE);

 if (dn->dn_free_txg)
  return (TRUE);

 if (blkid == DMU_SPILL_BLKID)
  return (dnode_spill_freed(dn));

 mutex_enter(&dn->dn_mtx);
 for (i = 0; i < TXG_SIZE; i++) {
  if (dn->dn_free_ranges[i] != ((void*)0) &&
      range_tree_contains(dn->dn_free_ranges[i], blkid, 1))
   break;
 }
 mutex_exit(&dn->dn_mtx);
 return (i < TXG_SIZE);
}
