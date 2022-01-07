
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dn_bonustype; } ;
typedef TYPE_1__ dnode_t ;
typedef int dmu_object_type_t ;
typedef int dmu_buf_t ;
typedef int dmu_buf_impl_t ;


 TYPE_1__* DB_DNODE (int *) ;
 int DB_DNODE_ENTER (int *) ;
 int DB_DNODE_EXIT (int *) ;

dmu_object_type_t
dmu_get_bonustype(dmu_buf_t *db_fake)
{
 dmu_buf_impl_t *db = (dmu_buf_impl_t *)db_fake;
 dnode_t *dn;
 dmu_object_type_t type;

 DB_DNODE_ENTER(db);
 dn = DB_DNODE(db);
 type = dn->dn_bonustype;
 DB_DNODE_EXIT(db);

 return (type);
}
