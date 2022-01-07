
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t uint64_t ;
typedef int uint32_t ;
typedef int objset_t ;
struct TYPE_9__ {size_t db_object; } ;
struct TYPE_10__ {int db_level; size_t db_blkid; scalar_t__ db_state; struct TYPE_10__* db_hash_next; int db_mtx; TYPE_1__ db; int * db_objset; } ;
typedef TYPE_2__ dmu_buf_impl_t ;
struct TYPE_11__ {size_t hash_table_mask; TYPE_2__** hash_table; } ;
typedef TYPE_3__ dbuf_hash_table_t ;


 scalar_t__ DBUF_EQUAL (TYPE_2__*,int *,size_t,int,size_t) ;
 int * DBUF_HASH_MUTEX (TYPE_3__*,size_t) ;
 int DBUF_STAT_BUMP (int ) ;
 int DBUF_STAT_MAX (int ,int) ;
 scalar_t__ DB_EVICTING ;
 int atomic_inc_64 (int*) ;
 size_t dbuf_hash (int *,size_t,int,size_t) ;
 int dbuf_hash_count ;
 TYPE_3__ dbuf_hash_table ;
 int hash_chain_max ;
 int hash_chains ;
 int hash_collisions ;
 int hash_elements_max ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static dmu_buf_impl_t *
dbuf_hash_insert(dmu_buf_impl_t *db)
{
 dbuf_hash_table_t *h = &dbuf_hash_table;
 objset_t *os = db->db_objset;
 uint64_t obj = db->db.db_object;
 int level = db->db_level;
 uint64_t blkid, hv, idx;
 dmu_buf_impl_t *dbf;
 uint32_t i;

 blkid = db->db_blkid;
 hv = dbuf_hash(os, obj, level, blkid);
 idx = hv & h->hash_table_mask;

 mutex_enter(DBUF_HASH_MUTEX(h, idx));
 for (dbf = h->hash_table[idx], i = 0; dbf != ((void*)0);
     dbf = dbf->db_hash_next, i++) {
  if (DBUF_EQUAL(dbf, os, obj, level, blkid)) {
   mutex_enter(&dbf->db_mtx);
   if (dbf->db_state != DB_EVICTING) {
    mutex_exit(DBUF_HASH_MUTEX(h, idx));
    return (dbf);
   }
   mutex_exit(&dbf->db_mtx);
  }
 }

 if (i > 0) {
  DBUF_STAT_BUMP(hash_collisions);
  if (i == 1)
   DBUF_STAT_BUMP(hash_chains);

  DBUF_STAT_MAX(hash_chain_max, i);
 }

 mutex_enter(&db->db_mtx);
 db->db_hash_next = h->hash_table[idx];
 h->hash_table[idx] = db;
 mutex_exit(DBUF_HASH_MUTEX(h, idx));
 atomic_inc_64(&dbuf_hash_count);
 DBUF_STAT_MAX(hash_elements_max, dbuf_hash_count);

 return (((void*)0));
}
