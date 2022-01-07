
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dsl_dataset_t ;
typedef int cred_t ;


 int dsl_deleg_access_impl (int *,char const*,int *) ;
 int secpolicy_zfs (int *) ;
 int zfs_dozonecheck_ds (char const*,int *,int *) ;

__attribute__((used)) static int
zfs_secpolicy_write_perms_ds(const char *name, dsl_dataset_t *ds,
    const char *perm, cred_t *cr)
{
 int error;

 error = zfs_dozonecheck_ds(name, ds, cr);
 if (error == 0) {
  error = secpolicy_zfs(cr);
  if (error != 0)
   error = dsl_deleg_access_impl(ds, perm, cr);
 }
 return (error);
}
