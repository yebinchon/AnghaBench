
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ db_level; } ;
typedef TYPE_1__ dmu_buf_impl_t ;
typedef int boolean_t ;
struct TYPE_8__ {int dn_type; } ;


 int B_TRUE ;
 TYPE_5__* DB_DNODE (TYPE_1__*) ;
 int DB_DNODE_ENTER (TYPE_1__*) ;
 int DB_DNODE_EXIT (TYPE_1__*) ;
 int DMU_OT_IS_METADATA (int ) ;

boolean_t
dbuf_is_metadata(dmu_buf_impl_t *db)
{
 if (db->db_level > 0) {
  return (B_TRUE);
 } else {
  boolean_t is_metadata;

  DB_DNODE_ENTER(db);
  is_metadata = DMU_OT_IS_METADATA(DB_DNODE(db)->dn_type);
  DB_DNODE_EXIT(db);

  return (is_metadata);
 }
}
