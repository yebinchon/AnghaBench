
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zbm_creation_txg; } ;
typedef TYPE_1__ zfs_bookmark_phys_t ;
typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;


 int EXDEV ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int dsl_bookmark_hold_ds (int *,char const*,int **,int ,char**) ;
 int dsl_dataset_bmark_lookup (int *,char*,TYPE_1__*) ;
 int dsl_dataset_is_before (int *,int *,int ) ;
 int dsl_dataset_rele (int *,int ) ;

int
dsl_bookmark_lookup(dsl_pool_t *dp, const char *fullname,
    dsl_dataset_t *later_ds, zfs_bookmark_phys_t *bmp)
{
 char *shortname;
 dsl_dataset_t *ds;
 int error;

 error = dsl_bookmark_hold_ds(dp, fullname, &ds, FTAG, &shortname);
 if (error != 0)
  return (error);

 error = dsl_dataset_bmark_lookup(ds, shortname, bmp);
 if (error == 0 && later_ds != ((void*)0)) {
  if (!dsl_dataset_is_before(later_ds, ds, bmp->zbm_creation_txg))
   error = SET_ERROR(EXDEV);
 }
 dsl_dataset_rele(ds, FTAG);
 return (error);
}
