
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int dsl_dataset_t ;
typedef int cred_t ;


 int ENOENT ;
 int SET_ERROR (int ) ;
 scalar_t__ dsl_prop_get_int_ds (int *,char*,int *) ;
 int zfs_dozonecheck_impl (char const*,int ,int *) ;

__attribute__((used)) static int
zfs_dozonecheck_ds(const char *dataset, dsl_dataset_t *ds, cred_t *cr)
{
 uint64_t zoned;

 if (dsl_prop_get_int_ds(ds, "jailed", &zoned))
  return (SET_ERROR(ENOENT));

 return (zfs_dozonecheck_impl(dataset, zoned, cr));
}
