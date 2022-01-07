
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int dnode_t ;
typedef int dmu_buf_t ;
typedef int dmu_buf_impl_t ;
typedef int boolean_t ;


 int * DB_DNODE (int *) ;
 int DB_DNODE_ENTER (int *) ;
 int DB_DNODE_EXIT (int *) ;
 int DMU_READ_PREFETCH ;
 int dmu_buf_hold_array_by_dnode (int *,int ,int ,int ,void*,int*,int ***,int ) ;

int
dmu_buf_hold_array_by_bonus(dmu_buf_t *db_fake, uint64_t offset,
    uint64_t length, boolean_t read, void *tag, int *numbufsp,
    dmu_buf_t ***dbpp)
{
 dmu_buf_impl_t *db = (dmu_buf_impl_t *)db_fake;
 dnode_t *dn;
 int err;

 DB_DNODE_ENTER(db);
 dn = DB_DNODE(db);
 err = dmu_buf_hold_array_by_dnode(dn, offset, length, read, tag,
     numbufsp, dbpp, DMU_READ_PREFETCH);
 DB_DNODE_EXIT(db);

 return (err);
}
