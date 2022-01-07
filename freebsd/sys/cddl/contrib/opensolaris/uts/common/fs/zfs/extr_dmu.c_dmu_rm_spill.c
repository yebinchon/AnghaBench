
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int objset_t ;
struct TYPE_6__ {int dn_struct_rwlock; } ;
typedef TYPE_1__ dnode_t ;
typedef int dmu_tx_t ;


 int FTAG ;
 int RW_WRITER ;
 int dbuf_rm_spill (TYPE_1__*,int *) ;
 int dnode_hold (int *,int ,int ,TYPE_1__**) ;
 int dnode_rele (TYPE_1__*,int ) ;
 int dnode_rm_spill (TYPE_1__*,int *) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;

int
dmu_rm_spill(objset_t *os, uint64_t object, dmu_tx_t *tx)
{
 dnode_t *dn;
 int error;

 error = dnode_hold(os, object, FTAG, &dn);
 dbuf_rm_spill(dn, tx);
 rw_enter(&dn->dn_struct_rwlock, RW_WRITER);
 dnode_rm_spill(dn, tx);
 rw_exit(&dn->dn_struct_rwlock);
 dnode_rele(dn, FTAG);
 return (error);
}
