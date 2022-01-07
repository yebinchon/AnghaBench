
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;
typedef int cred_t ;


 int FTAG ;
 int dsl_dataset_hold (int *,char const*,int ,int **) ;
 int dsl_dataset_rele (int *,int ) ;
 int dsl_deleg_access_impl (int *,char const*,int *) ;
 int dsl_pool_hold (char const*,int ,int **) ;
 int dsl_pool_rele (int *,int ) ;

int
dsl_deleg_access(const char *dsname, const char *perm, cred_t *cr)
{
 dsl_pool_t *dp;
 dsl_dataset_t *ds;
 int error;

 error = dsl_pool_hold(dsname, FTAG, &dp);
 if (error != 0)
  return (error);
 error = dsl_dataset_hold(dp, dsname, FTAG, &ds);
 if (error == 0) {
  error = dsl_deleg_access_impl(ds, perm, cr);
  dsl_dataset_rele(ds, FTAG);
 }
 dsl_pool_rele(dp, FTAG);

 return (error);
}
