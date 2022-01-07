
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int zfs_bookmark_phys_t ;
typedef int dsl_pool_t ;
struct TYPE_8__ {int ds_is_snapshot; } ;
typedef TYPE_1__ dsl_dataset_t ;
typedef int dmu_tx_t ;


 int EEXIST ;
 int EINVAL ;
 int ESRCH ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int * dmu_tx_pool (int *) ;
 int dsl_bookmark_hold_ds (int *,char const*,TYPE_1__**,int ,char**) ;
 int dsl_dataset_bmark_lookup (TYPE_1__*,char*,int *) ;
 int dsl_dataset_is_before (TYPE_1__*,TYPE_1__*,int ) ;
 int dsl_dataset_rele (TYPE_1__*,int ) ;

__attribute__((used)) static int
dsl_bookmark_create_check_impl(dsl_dataset_t *snapds, const char *bookmark_name,
    dmu_tx_t *tx)
{
 dsl_pool_t *dp = dmu_tx_pool(tx);
 dsl_dataset_t *bmark_fs;
 char *shortname;
 int error;
 zfs_bookmark_phys_t bmark_phys;

 if (!snapds->ds_is_snapshot)
  return (SET_ERROR(EINVAL));

 error = dsl_bookmark_hold_ds(dp, bookmark_name,
     &bmark_fs, FTAG, &shortname);
 if (error != 0)
  return (error);

 if (!dsl_dataset_is_before(bmark_fs, snapds, 0)) {
  dsl_dataset_rele(bmark_fs, FTAG);
  return (SET_ERROR(EINVAL));
 }

 error = dsl_dataset_bmark_lookup(bmark_fs, shortname,
     &bmark_phys);
 dsl_dataset_rele(bmark_fs, FTAG);
 if (error == 0)
  return (SET_ERROR(EEXIST));
 if (error == ESRCH)
  return (0);
 return (error);
}
