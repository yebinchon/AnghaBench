
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dmu_buf_t ;
typedef int dmu_buf_impl_t ;


 int DB_DNODE_EXIT (int *) ;

void
dmu_buf_dnode_exit(dmu_buf_t *db)
{
 dmu_buf_impl_t *dbi = (dmu_buf_impl_t *)db;
 DB_DNODE_EXIT(dbi);
}
