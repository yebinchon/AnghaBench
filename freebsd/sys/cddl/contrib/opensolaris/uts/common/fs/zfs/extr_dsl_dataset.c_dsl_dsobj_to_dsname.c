
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;


 int FTAG ;
 int dsl_dataset_hold_obj (int *,int ,int ,int **) ;
 int dsl_dataset_name (int *,char*) ;
 int dsl_dataset_rele (int *,int ) ;
 int dsl_pool_hold (char*,int ,int **) ;
 int dsl_pool_rele (int *,int ) ;

int
dsl_dsobj_to_dsname(char *pname, uint64_t obj, char *buf)
{
 dsl_pool_t *dp;
 dsl_dataset_t *ds;
 int error;

 error = dsl_pool_hold(pname, FTAG, &dp);
 if (error != 0)
  return (error);

 error = dsl_dataset_hold_obj(dp, obj, FTAG, &ds);
 if (error == 0) {
  dsl_dataset_name(ds, buf);
  dsl_dataset_rele(ds, FTAG);
 }
 dsl_pool_rele(dp, FTAG);

 return (error);
}
