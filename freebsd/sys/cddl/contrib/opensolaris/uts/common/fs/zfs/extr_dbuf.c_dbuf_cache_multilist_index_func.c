
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int multilist_t ;
struct TYPE_3__ {int db_object; } ;
struct TYPE_4__ {int db_blkid; int db_level; TYPE_1__ db; int db_objset; } ;
typedef TYPE_2__ dmu_buf_impl_t ;


 unsigned int dbuf_hash (int ,int ,int ,int ) ;
 unsigned int multilist_get_num_sublists (int *) ;

unsigned int
dbuf_cache_multilist_index_func(multilist_t *ml, void *obj)
{
 dmu_buf_impl_t *db = obj;
 return (dbuf_hash(db->db_objset, db->db.db_object,
     db->db_level, db->db_blkid) %
     multilist_get_num_sublists(ml));
}
