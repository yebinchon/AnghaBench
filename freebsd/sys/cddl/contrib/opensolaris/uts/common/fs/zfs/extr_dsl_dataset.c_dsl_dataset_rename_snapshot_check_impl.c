
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int dsl_pool_t ;
struct TYPE_5__ {int ds_dir; } ;
typedef TYPE_1__ dsl_dataset_t ;
struct TYPE_6__ {int ddrsa_newsnapname; int ddrsa_oldsnapname; } ;
typedef TYPE_2__ dsl_dataset_rename_snapshot_arg_t ;


 int EEXIST ;
 int ENAMETOOLONG ;
 int ENOENT ;
 int SET_ERROR (int ) ;
 scalar_t__ ZFS_MAX_DATASET_NAME_LEN ;
 int dsl_dataset_snap_lookup (TYPE_1__*,int ,int *) ;
 scalar_t__ dsl_dir_namelen (int ) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int
dsl_dataset_rename_snapshot_check_impl(dsl_pool_t *dp,
    dsl_dataset_t *hds, void *arg)
{
 dsl_dataset_rename_snapshot_arg_t *ddrsa = arg;
 int error;
 uint64_t val;

 error = dsl_dataset_snap_lookup(hds, ddrsa->ddrsa_oldsnapname, &val);
 if (error != 0) {

  return (error == ENOENT ? 0 : error);
 }


 error = dsl_dataset_snap_lookup(hds, ddrsa->ddrsa_newsnapname, &val);
 if (error == 0)
  error = SET_ERROR(EEXIST);
 else if (error == ENOENT)
  error = 0;


 if (dsl_dir_namelen(hds->ds_dir) + 1 +
     strlen(ddrsa->ddrsa_newsnapname) >= ZFS_MAX_DATASET_NAME_LEN)
  error = SET_ERROR(ENAMETOOLONG);

 return (error);
}
