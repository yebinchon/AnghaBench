
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int objset_t ;
typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;


 int dmu_objset_from_ds (int *,int **) ;
 int dsl_dataset_hold (int *,char const*,void*,int **) ;
 int dsl_dataset_rele (int *,void*) ;
 int dsl_pool_hold (char const*,void*,int **) ;
 int dsl_pool_rele (int *,void*) ;

int
dmu_objset_hold(const char *name, void *tag, objset_t **osp)
{
 dsl_pool_t *dp;
 dsl_dataset_t *ds;
 int err;

 err = dsl_pool_hold(name, tag, &dp);
 if (err != 0)
  return (err);
 err = dsl_dataset_hold(dp, name, tag, &ds);
 if (err != 0) {
  dsl_pool_rele(dp, tag);
  return (err);
 }

 err = dmu_objset_from_ds(ds, osp);
 if (err != 0) {
  dsl_dataset_rele(ds, tag);
  dsl_pool_rele(dp, tag);
 }

 return (err);
}
