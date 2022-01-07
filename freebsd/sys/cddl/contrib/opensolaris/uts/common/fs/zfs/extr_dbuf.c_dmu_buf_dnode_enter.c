
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dnode_t ;
typedef int dmu_buf_t ;
typedef int dmu_buf_impl_t ;


 int * DB_DNODE (int *) ;
 int DB_DNODE_ENTER (int *) ;

dnode_t *
dmu_buf_dnode_enter(dmu_buf_t *db)
{
 dmu_buf_impl_t *dbi = (dmu_buf_impl_t *)db;
 DB_DNODE_ENTER(dbi);
 return (DB_DNODE(dbi));
}
