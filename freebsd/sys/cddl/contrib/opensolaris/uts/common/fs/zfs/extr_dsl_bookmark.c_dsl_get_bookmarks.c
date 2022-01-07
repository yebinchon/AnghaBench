
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;


 int FTAG ;
 int dsl_dataset_hold (int *,char const*,int ,int **) ;
 int dsl_dataset_rele (int *,int ) ;
 int dsl_get_bookmarks_impl (int *,int *,int *) ;
 int dsl_pool_hold (char const*,int ,int **) ;
 int dsl_pool_rele (int *,int ) ;

int
dsl_get_bookmarks(const char *dsname, nvlist_t *props, nvlist_t *outnvl)
{
 dsl_pool_t *dp;
 dsl_dataset_t *ds;
 int err;

 err = dsl_pool_hold(dsname, FTAG, &dp);
 if (err != 0)
  return (err);
 err = dsl_dataset_hold(dp, dsname, FTAG, &ds);
 if (err != 0) {
  dsl_pool_rele(dp, FTAG);
  return (err);
 }

 err = dsl_get_bookmarks_impl(ds, props, outnvl);

 dsl_dataset_rele(ds, FTAG);
 dsl_pool_rele(dp, FTAG);
 return (err);
}
