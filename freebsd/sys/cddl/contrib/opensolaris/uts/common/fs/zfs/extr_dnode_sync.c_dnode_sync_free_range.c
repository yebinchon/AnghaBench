
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int dn_mtx; } ;
typedef TYPE_1__ dnode_t ;
struct TYPE_5__ {int dsfra_tx; int dsfra_free_indirects; TYPE_1__* dsfra_dnode; } ;
typedef TYPE_2__ dnode_sync_free_range_arg_t ;


 int dnode_sync_free_range_impl (TYPE_1__*,int ,int ,int ,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static void
dnode_sync_free_range(void *arg, uint64_t blkid, uint64_t nblks)
{
 dnode_sync_free_range_arg_t *dsfra = arg;
 dnode_t *dn = dsfra->dsfra_dnode;

 mutex_exit(&dn->dn_mtx);
 dnode_sync_free_range_impl(dn, blkid, nblks,
     dsfra->dsfra_free_indirects, dsfra->dsfra_tx);
 mutex_enter(&dn->dn_mtx);
}
