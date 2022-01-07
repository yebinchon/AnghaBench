
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dmu_buf_t ;


 int dmu_buf_rele (int *,void*) ;

void
sa_buf_rele(dmu_buf_t *db, void *tag)
{
 dmu_buf_rele(db, tag);
}
