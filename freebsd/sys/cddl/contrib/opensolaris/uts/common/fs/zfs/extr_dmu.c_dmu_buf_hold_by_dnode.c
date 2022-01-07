
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int dnode_t ;
typedef int dmu_buf_t ;
typedef int dmu_buf_impl_t ;


 int DB_RF_CANFAIL ;
 int DB_RF_NOPREFETCH ;
 int DMU_READ_NO_PREFETCH ;
 int dbuf_read (int *,int *,int) ;
 int dbuf_rele (int *,void*) ;
 int dmu_buf_hold_noread_by_dnode (int *,int ,void*,int **) ;

int
dmu_buf_hold_by_dnode(dnode_t *dn, uint64_t offset,
    void *tag, dmu_buf_t **dbp, int flags)
{
 int err;
 int db_flags = DB_RF_CANFAIL;

 if (flags & DMU_READ_NO_PREFETCH)
  db_flags |= DB_RF_NOPREFETCH;

 err = dmu_buf_hold_noread_by_dnode(dn, offset, tag, dbp);
 if (err == 0) {
  dmu_buf_impl_t *db = (dmu_buf_impl_t *)(*dbp);
  err = dbuf_read(db, ((void*)0), db_flags);
  if (err != 0) {
   dbuf_rele(db, tag);
   *dbp = ((void*)0);
  }
 }

 return (err);
}
