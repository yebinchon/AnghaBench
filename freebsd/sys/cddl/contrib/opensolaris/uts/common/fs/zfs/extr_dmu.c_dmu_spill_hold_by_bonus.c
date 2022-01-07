
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dnode_t ;
typedef int dmu_buf_t ;
typedef int dmu_buf_impl_t ;


 int * DB_DNODE (int *) ;
 int DB_DNODE_ENTER (int *) ;
 int DB_DNODE_EXIT (int *) ;
 int DB_RF_CANFAIL ;
 int dmu_spill_hold_by_dnode (int *,int ,void*,int **) ;

int
dmu_spill_hold_by_bonus(dmu_buf_t *bonus, void *tag, dmu_buf_t **dbp)
{
 dmu_buf_impl_t *db = (dmu_buf_impl_t *)bonus;
 dnode_t *dn;
 int err;

 DB_DNODE_ENTER(db);
 dn = DB_DNODE(db);
 err = dmu_spill_hold_by_dnode(dn, DB_RF_CANFAIL, tag, dbp);
 DB_DNODE_EXIT(db);

 return (err);
}
