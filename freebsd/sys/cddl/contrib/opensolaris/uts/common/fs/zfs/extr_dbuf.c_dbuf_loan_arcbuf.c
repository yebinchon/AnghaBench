
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int spa_t ;
struct TYPE_13__ {int db_size; int db_data; } ;
struct TYPE_14__ {scalar_t__ db_blkid; int db_mtx; TYPE_4__* db_buf; TYPE_2__ db; TYPE_1__* db_objset; int db_holds; } ;
typedef TYPE_3__ dmu_buf_impl_t ;
struct TYPE_15__ {int b_data; } ;
typedef TYPE_4__ arc_buf_t ;
struct TYPE_12__ {int * os_spa; } ;


 int ASSERT (int) ;
 int B_FALSE ;
 scalar_t__ DMU_BONUS_BLKID ;
 TYPE_4__* arc_loan_buf (int *,int ,int) ;
 int arc_loan_inuse_buf (TYPE_4__*,TYPE_3__*) ;
 scalar_t__ arc_released (TYPE_4__*) ;
 int bcopy (int ,int ,int) ;
 int dbuf_clear_data (TYPE_3__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zfs_refcount_count (int *) ;

arc_buf_t *
dbuf_loan_arcbuf(dmu_buf_impl_t *db)
{
 arc_buf_t *abuf;

 ASSERT(db->db_blkid != DMU_BONUS_BLKID);
 mutex_enter(&db->db_mtx);
 if (arc_released(db->db_buf) || zfs_refcount_count(&db->db_holds) > 1) {
  int blksz = db->db.db_size;
  spa_t *spa = db->db_objset->os_spa;

  mutex_exit(&db->db_mtx);
  abuf = arc_loan_buf(spa, B_FALSE, blksz);
  bcopy(db->db.db_data, abuf->b_data, blksz);
 } else {
  abuf = db->db_buf;
  arc_loan_inuse_buf(abuf, db);
  db->db_buf = ((void*)0);
  dbuf_clear_data(db);
  mutex_exit(&db->db_mtx);
 }
 return (abuf);
}
