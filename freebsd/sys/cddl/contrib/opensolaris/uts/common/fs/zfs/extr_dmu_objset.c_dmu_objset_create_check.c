
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dsl_pool_t ;
typedef int dsl_dir_t ;
typedef int dmu_tx_t ;
struct TYPE_2__ {int doca_cred; int doca_name; } ;
typedef TYPE_1__ dmu_objset_create_arg_t ;


 int EEXIST ;
 int EINVAL ;
 int ENAMETOOLONG ;
 int FTAG ;
 int SET_ERROR (int ) ;
 scalar_t__ ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_PROP_FILESYSTEM_LIMIT ;
 scalar_t__ dataset_nestcheck (int ) ;
 int * dmu_tx_pool (int *) ;
 int dsl_dir_hold (int *,int ,int ,int **,char const**) ;
 int dsl_dir_rele (int *,int ) ;
 int dsl_fs_ss_limit_check (int *,int,int ,int *,int ) ;
 int * strchr (int ,char) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int
dmu_objset_create_check(void *arg, dmu_tx_t *tx)
{
 dmu_objset_create_arg_t *doca = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 dsl_dir_t *pdd;
 const char *tail;
 int error;

 if (strchr(doca->doca_name, '@') != ((void*)0))
  return (SET_ERROR(EINVAL));

 if (strlen(doca->doca_name) >= ZFS_MAX_DATASET_NAME_LEN)
  return (SET_ERROR(ENAMETOOLONG));

 if (dataset_nestcheck(doca->doca_name) != 0)
  return (SET_ERROR(ENAMETOOLONG));

 error = dsl_dir_hold(dp, doca->doca_name, FTAG, &pdd, &tail);
 if (error != 0)
  return (error);
 if (tail == ((void*)0)) {
  dsl_dir_rele(pdd, FTAG);
  return (SET_ERROR(EEXIST));
 }
 error = dsl_fs_ss_limit_check(pdd, 1, ZFS_PROP_FILESYSTEM_LIMIT, ((void*)0),
     doca->doca_cred);
 dsl_dir_rele(pdd, FTAG);

 return (error);
}
