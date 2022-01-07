
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;
typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;
typedef int dmu_objset_type_t ;
typedef int boolean_t ;


 int dmu_objset_own_impl (int *,int ,int ,void*,int **) ;
 int dsl_dataset_own_obj (int *,int ,void*,int **) ;

int
dmu_objset_own_obj(dsl_pool_t *dp, uint64_t obj, dmu_objset_type_t type,
    boolean_t readonly, void *tag, objset_t **osp)
{
 dsl_dataset_t *ds;
 int err;

 err = dsl_dataset_own_obj(dp, obj, tag, &ds);
 if (err != 0)
  return (err);

 return (dmu_objset_own_impl(ds, type, readonly, tag, osp));
}
