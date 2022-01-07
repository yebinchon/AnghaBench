
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dmu_buf_t ;
typedef int dmu_buf_impl_t ;


 int dbuf_rele (int *,void*) ;

void
dmu_buf_rele(dmu_buf_t *db, void *tag)
{
 dbuf_rele((dmu_buf_impl_t *)db, tag);
}
