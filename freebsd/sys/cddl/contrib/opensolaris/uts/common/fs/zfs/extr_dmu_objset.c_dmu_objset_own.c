
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int objset_t ;
typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;
typedef int dmu_objset_type_t ;
typedef int boolean_t ;


 int FTAG ;
 int dmu_objset_own_impl (int *,int ,int ,void*,int **) ;
 int dsl_dataset_own (int *,char const*,void*,int **) ;
 int dsl_pool_hold (char const*,int ,int **) ;
 int dsl_pool_rele (int *,int ) ;

int
dmu_objset_own(const char *name, dmu_objset_type_t type,
    boolean_t readonly, void *tag, objset_t **osp)
{
 dsl_pool_t *dp;
 dsl_dataset_t *ds;
 int err;

 err = dsl_pool_hold(name, FTAG, &dp);
 if (err != 0)
  return (err);
 err = dsl_dataset_own(dp, name, tag, &ds);
 if (err != 0) {
  dsl_pool_rele(dp, FTAG);
  return (err);
 }
 err = dmu_objset_own_impl(ds, type, readonly, tag, osp);
 dsl_pool_rele(dp, FTAG);

 return (err);
}
