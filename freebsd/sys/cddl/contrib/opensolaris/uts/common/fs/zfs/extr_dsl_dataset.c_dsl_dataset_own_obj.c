
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;


 int EBUSY ;
 int SET_ERROR (int ) ;
 int dsl_dataset_hold_obj (int *,int ,void*,int **) ;
 int dsl_dataset_rele (int *,void*) ;
 int dsl_dataset_tryown (int *,void*) ;

int
dsl_dataset_own_obj(dsl_pool_t *dp, uint64_t dsobj,
    void *tag, dsl_dataset_t **dsp)
{
 int err = dsl_dataset_hold_obj(dp, dsobj, tag, dsp);
 if (err != 0)
  return (err);
 if (!dsl_dataset_tryown(*dsp, tag)) {
  dsl_dataset_rele(*dsp, tag);
  *dsp = ((void*)0);
  return (SET_ERROR(EBUSY));
 }
 return (0);
}
