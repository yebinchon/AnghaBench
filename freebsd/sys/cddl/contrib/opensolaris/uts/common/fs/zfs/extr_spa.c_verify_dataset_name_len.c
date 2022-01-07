
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;


 int ENAMETOOLONG ;
 int SET_ERROR (int ) ;
 scalar_t__ ZFS_MAX_DATASET_NAME_LEN ;
 scalar_t__ dsl_dataset_namelen (int *) ;

int
verify_dataset_name_len(dsl_pool_t *dp, dsl_dataset_t *ds, void *arg)
{
 if (dsl_dataset_namelen(ds) >= ZFS_MAX_DATASET_NAME_LEN)
  return (SET_ERROR(ENAMETOOLONG));

 return (0);
}
