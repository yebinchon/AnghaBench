
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;
typedef int dmu_buf_t ;


 int dmu_bonus_hold (int *,int ,void*,int **) ;

int
sa_buf_hold(objset_t *objset, uint64_t obj_num, void *tag, dmu_buf_t **db)
{
 return (dmu_bonus_hold(objset, obj_num, tag, db));
}
