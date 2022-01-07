
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int nvlist_t ;
typedef int minor_t ;
typedef int dsl_dataset_t ;
typedef int dmu_tx_t ;


 int dsl_dataset_get_spa (int *) ;
 int dsl_dataset_user_hold_sync_one_impl (int *,int *,char const*,int ,int ,int *) ;
 int dsl_onexit_hold_cleanup (int ,int *,int ) ;
 int * fnvlist_alloc () ;

void
dsl_dataset_user_hold_sync_one(dsl_dataset_t *ds, const char *htag,
    minor_t minor, uint64_t now, dmu_tx_t *tx)
{
 nvlist_t *tmpholds;

 if (minor != 0)
  tmpholds = fnvlist_alloc();
 else
  tmpholds = ((void*)0);
 dsl_dataset_user_hold_sync_one_impl(tmpholds, ds, htag, minor, now, tx);
 dsl_onexit_hold_cleanup(dsl_dataset_get_spa(ds), tmpholds, minor);
}
