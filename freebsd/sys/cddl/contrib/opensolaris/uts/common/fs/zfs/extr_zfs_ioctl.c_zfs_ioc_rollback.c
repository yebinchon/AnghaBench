
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int z_vfs; int z_os; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef int nvlist_t ;
typedef int dsl_dataset_t ;


 int EINVAL ;
 int SET_ERROR (int ) ;
 int VFS_RELE (int ) ;
 int * dmu_objset_ds (int ) ;
 int dsl_dataset_rollback (char const*,char*,TYPE_1__*,int *) ;
 scalar_t__ getzfsvfs (char const*,TYPE_1__**) ;
 int nvlist_lookup_string (int *,char*,char**) ;
 char* strchr (char*,char) ;
 int vfs_unbusy (int ) ;
 scalar_t__ zfs_component_namecheck (char const*,int *,int *) ;
 int zfs_resume_fs (TYPE_1__*,int *) ;
 int zfs_suspend_fs (TYPE_1__*) ;

__attribute__((used)) static int
zfs_ioc_rollback(const char *fsname, nvlist_t *innvl, nvlist_t *outnvl)
{
 zfsvfs_t *zfsvfs;
 char *target = ((void*)0);
 int error;

 (void) nvlist_lookup_string(innvl, "target", &target);
 if (target != ((void*)0)) {
  const char *cp = strchr(target, '@');





  if (cp == ((void*)0) ||
      zfs_component_namecheck(cp + 1, ((void*)0), ((void*)0)) != 0)
   return (SET_ERROR(EINVAL));
 }

 if (getzfsvfs(fsname, &zfsvfs) == 0) {
  dsl_dataset_t *ds;

  ds = dmu_objset_ds(zfsvfs->z_os);
  error = zfs_suspend_fs(zfsvfs);
  if (error == 0) {
   int resume_err;

   error = dsl_dataset_rollback(fsname, target, zfsvfs,
       outnvl);
   resume_err = zfs_resume_fs(zfsvfs, ds);
   error = error ? error : resume_err;
  }



  vfs_unbusy(zfsvfs->z_vfs);

 } else {
  error = dsl_dataset_rollback(fsname, target, ((void*)0), outnvl);
 }
 return (error);
}
