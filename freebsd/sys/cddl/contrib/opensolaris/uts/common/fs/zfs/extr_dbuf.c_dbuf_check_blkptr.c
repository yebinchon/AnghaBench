
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int dn_struct_rwlock; TYPE_9__* dn_phys; TYPE_3__* dn_dbuf; } ;
typedef TYPE_2__ dnode_t ;
struct TYPE_11__ {scalar_t__ db_data; } ;
struct TYPE_13__ {scalar_t__ db_blkid; int db_level; TYPE_1__ db; int * db_blkptr; struct TYPE_13__* db_parent; int db_mtx; } ;
typedef TYPE_3__ dmu_buf_impl_t ;
typedef int blkptr_t ;
struct TYPE_14__ {int dn_nlevels; scalar_t__ dn_nblkptr; int dn_indblkshift; int * dn_blkptr; } ;


 int ASSERT (int) ;
 int BP_ZERO (int *) ;
 int DBUF_VERIFY (TYPE_3__*) ;
 scalar_t__ DMU_SPILL_BLKID ;
 int * DN_SPILL_BLKPTR (TYPE_9__*) ;
 int MUTEX_HELD (int *) ;
 int RW_READER ;
 int SPA_BLKPTRSHIFT ;
 TYPE_3__* dbuf_hold_level (TYPE_2__*,int,int,TYPE_3__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;

__attribute__((used)) static void
dbuf_check_blkptr(dnode_t *dn, dmu_buf_impl_t *db)
{

 ASSERT(MUTEX_HELD(&db->db_mtx));

 if (db->db_blkptr != ((void*)0))
  return;

 if (db->db_blkid == DMU_SPILL_BLKID) {
  db->db_blkptr = DN_SPILL_BLKPTR(dn->dn_phys);
  BP_ZERO(db->db_blkptr);
  return;
 }
 if (db->db_level == dn->dn_phys->dn_nlevels-1) {





  ASSERT(db->db_blkid < dn->dn_phys->dn_nblkptr);
  ASSERT(db->db_parent == ((void*)0));
  db->db_parent = dn->dn_dbuf;
  db->db_blkptr = &dn->dn_phys->dn_blkptr[db->db_blkid];
  DBUF_VERIFY(db);
 } else {
  dmu_buf_impl_t *parent = db->db_parent;
  int epbs = dn->dn_phys->dn_indblkshift - SPA_BLKPTRSHIFT;

  ASSERT(dn->dn_phys->dn_nlevels > 1);
  if (parent == ((void*)0)) {
   mutex_exit(&db->db_mtx);
   rw_enter(&dn->dn_struct_rwlock, RW_READER);
   parent = dbuf_hold_level(dn, db->db_level + 1,
       db->db_blkid >> epbs, db);
   rw_exit(&dn->dn_struct_rwlock);
   mutex_enter(&db->db_mtx);
   db->db_parent = parent;
  }
  db->db_blkptr = (blkptr_t *)parent->db.db_data +
      (db->db_blkid & ((1ULL << epbs) - 1));
  DBUF_VERIFY(db);
 }
}
