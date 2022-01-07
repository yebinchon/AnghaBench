
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {int dn_struct_rwlock; } ;
typedef TYPE_1__ dnode_t ;
typedef int dmu_buf_t ;
struct TYPE_9__ {int db; } ;
typedef TYPE_2__ dmu_buf_impl_t ;


 int ASSERT (int ) ;
 int DB_RF_HAVESTRUCT ;
 int DMU_SPILL_BLKID ;
 int RW_READER ;
 TYPE_2__* dbuf_hold (TYPE_1__*,int ,void*) ;
 int dbuf_read (TYPE_2__*,int *,int) ;
 int dbuf_rele (TYPE_2__*,void*) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;

int
dmu_spill_hold_by_dnode(dnode_t *dn, uint32_t flags, void *tag, dmu_buf_t **dbp)
{
 dmu_buf_impl_t *db = ((void*)0);
 int err;

 if ((flags & DB_RF_HAVESTRUCT) == 0)
  rw_enter(&dn->dn_struct_rwlock, RW_READER);

 db = dbuf_hold(dn, DMU_SPILL_BLKID, tag);

 if ((flags & DB_RF_HAVESTRUCT) == 0)
  rw_exit(&dn->dn_struct_rwlock);

 ASSERT(db != ((void*)0));
 err = dbuf_read(db, ((void*)0), flags);
 if (err == 0)
  *dbp = &db->db;
 else
  dbuf_rele(db, tag);
 return (err);
}
