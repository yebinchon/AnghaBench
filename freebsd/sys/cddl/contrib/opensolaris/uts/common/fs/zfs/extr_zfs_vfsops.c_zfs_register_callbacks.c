
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_21__ {int * z_os; struct TYPE_21__* vfs_data; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef TYPE_1__ vfs_t ;
typedef void* uint64_t ;
struct dsl_dataset {int dummy; } ;
typedef int objset_t ;
typedef void* boolean_t ;


 int ASSERT (TYPE_1__*) ;
 void* B_FALSE ;
 void* B_TRUE ;
 int EOPNOTSUPP ;
 int FTAG ;
 int MNTOPT_ATIME ;
 int MNTOPT_EXEC ;
 int MNTOPT_NBMAND ;
 int MNTOPT_NOATIME ;
 int MNTOPT_NOEXEC ;
 int MNTOPT_NONBMAND ;
 int MNTOPT_NOSETUID ;
 int MNTOPT_NOSUID ;
 int MNTOPT_NOXATTR ;
 int MNTOPT_RO ;
 int MNTOPT_RW ;
 int MNTOPT_SETUID ;
 int MNTOPT_XATTR ;
 int ZFS_PROP_ACLINHERIT ;
 int ZFS_PROP_ACLMODE ;
 int ZFS_PROP_ATIME ;
 int ZFS_PROP_DEVICES ;
 int ZFS_PROP_EXEC ;
 int ZFS_PROP_READONLY ;
 int ZFS_PROP_RECORDSIZE ;
 int ZFS_PROP_SETUID ;
 int ZFS_PROP_SNAPDIR ;
 int ZFS_PROP_VSCAN ;
 int ZFS_PROP_XATTR ;
 int acl_inherit_changed_cb (TYPE_1__*,void*) ;
 int acl_mode_changed_cb (TYPE_1__*,void*) ;
 int atime_changed_cb (TYPE_1__*,void*) ;
 int blksz_changed_cb (TYPE_1__*,void*) ;
 int devices_changed_cb (TYPE_1__*,void*) ;
 struct dsl_dataset* dmu_objset_ds (int *) ;
 scalar_t__ dmu_objset_is_snapshot (int *) ;
 int dmu_objset_pool (int *) ;
 int dmu_objset_spa (int *) ;
 int dsl_pool_config_enter (int ,int ) ;
 int dsl_pool_config_exit (int ,int ) ;
 scalar_t__ dsl_prop_get_int_ds (struct dsl_dataset*,char*,void**) ;
 int dsl_prop_register (struct dsl_dataset*,int ,int (*) (TYPE_1__*,void*),TYPE_1__*) ;
 int dsl_prop_unregister_all (struct dsl_dataset*,TYPE_1__*) ;
 int exec_changed_cb (TYPE_1__*,void*) ;
 int nbmand_changed_cb (TYPE_1__*,void*) ;
 int readonly_changed_cb (TYPE_1__*,void*) ;
 int setuid_changed_cb (TYPE_1__*,void*) ;
 int snapdir_changed_cb (TYPE_1__*,void*) ;
 int spa_writeable (int ) ;
 scalar_t__ vfs_optionisset (TYPE_1__*,int ,int *) ;
 int vscan_changed_cb (TYPE_1__*,void*) ;
 int xattr_changed_cb (TYPE_1__*,void*) ;
 int zfs_prop_to_name (int ) ;

__attribute__((used)) static int
zfs_register_callbacks(vfs_t *vfsp)
{
 struct dsl_dataset *ds = ((void*)0);
 objset_t *os = ((void*)0);
 zfsvfs_t *zfsvfs = ((void*)0);
 uint64_t nbmand;
 boolean_t readonly = B_FALSE;
 boolean_t do_readonly = B_FALSE;
 boolean_t setuid = B_FALSE;
 boolean_t do_setuid = B_FALSE;
 boolean_t exec = B_FALSE;
 boolean_t do_exec = B_FALSE;




 boolean_t xattr = B_FALSE;
 boolean_t do_xattr = B_FALSE;
 boolean_t atime = B_FALSE;
 boolean_t do_atime = B_FALSE;
 int error = 0;

 ASSERT(vfsp);
 zfsvfs = vfsp->vfs_data;
 ASSERT(zfsvfs);
 os = zfsvfs->z_os;





 if (dmu_objset_is_snapshot(os))
  return (EOPNOTSUPP);







 if (vfs_optionisset(vfsp, MNTOPT_RO, ((void*)0)) ||
     !spa_writeable(dmu_objset_spa(os))) {
  readonly = B_TRUE;
  do_readonly = B_TRUE;
 } else if (vfs_optionisset(vfsp, MNTOPT_RW, ((void*)0))) {
  readonly = B_FALSE;
  do_readonly = B_TRUE;
 }
 if (vfs_optionisset(vfsp, MNTOPT_NOSUID, ((void*)0))) {
  setuid = B_FALSE;
  do_setuid = B_TRUE;
 } else {
  if (vfs_optionisset(vfsp, MNTOPT_NOSETUID, ((void*)0))) {
   setuid = B_FALSE;
   do_setuid = B_TRUE;
  } else if (vfs_optionisset(vfsp, MNTOPT_SETUID, ((void*)0))) {
   setuid = B_TRUE;
   do_setuid = B_TRUE;
  }
 }
 if (vfs_optionisset(vfsp, MNTOPT_NOEXEC, ((void*)0))) {
  exec = B_FALSE;
  do_exec = B_TRUE;
 } else if (vfs_optionisset(vfsp, MNTOPT_EXEC, ((void*)0))) {
  exec = B_TRUE;
  do_exec = B_TRUE;
 }
 if (vfs_optionisset(vfsp, MNTOPT_NOXATTR, ((void*)0))) {
  xattr = B_FALSE;
  do_xattr = B_TRUE;
 } else if (vfs_optionisset(vfsp, MNTOPT_XATTR, ((void*)0))) {
  xattr = B_TRUE;
  do_xattr = B_TRUE;
 }
 if (vfs_optionisset(vfsp, MNTOPT_NOATIME, ((void*)0))) {
  atime = B_FALSE;
  do_atime = B_TRUE;
 } else if (vfs_optionisset(vfsp, MNTOPT_ATIME, ((void*)0))) {
  atime = B_TRUE;
  do_atime = B_TRUE;
 }
 ds = dmu_objset_ds(os);
 dsl_pool_config_enter(dmu_objset_pool(os), FTAG);
 if (vfs_optionisset(vfsp, MNTOPT_NONBMAND, ((void*)0))) {
  nbmand = B_FALSE;
 } else if (vfs_optionisset(vfsp, MNTOPT_NBMAND, ((void*)0))) {
  nbmand = B_TRUE;
 } else if (error = dsl_prop_get_int_ds(ds, "nbmand", &nbmand) != 0) {
  dsl_pool_config_exit(dmu_objset_pool(os), FTAG);
  return (error);
 }
 error = dsl_prop_register(ds,
     zfs_prop_to_name(ZFS_PROP_ATIME), atime_changed_cb, zfsvfs);
 error = error ? error : dsl_prop_register(ds,
     zfs_prop_to_name(ZFS_PROP_XATTR), xattr_changed_cb, zfsvfs);
 error = error ? error : dsl_prop_register(ds,
     zfs_prop_to_name(ZFS_PROP_RECORDSIZE), blksz_changed_cb, zfsvfs);
 error = error ? error : dsl_prop_register(ds,
     zfs_prop_to_name(ZFS_PROP_READONLY), readonly_changed_cb, zfsvfs);




 error = error ? error : dsl_prop_register(ds,
     zfs_prop_to_name(ZFS_PROP_SETUID), setuid_changed_cb, zfsvfs);
 error = error ? error : dsl_prop_register(ds,
     zfs_prop_to_name(ZFS_PROP_EXEC), exec_changed_cb, zfsvfs);
 error = error ? error : dsl_prop_register(ds,
     zfs_prop_to_name(ZFS_PROP_SNAPDIR), snapdir_changed_cb, zfsvfs);
 error = error ? error : dsl_prop_register(ds,
     zfs_prop_to_name(ZFS_PROP_ACLMODE), acl_mode_changed_cb, zfsvfs);
 error = error ? error : dsl_prop_register(ds,
     zfs_prop_to_name(ZFS_PROP_ACLINHERIT), acl_inherit_changed_cb,
     zfsvfs);
 error = error ? error : dsl_prop_register(ds,
     zfs_prop_to_name(ZFS_PROP_VSCAN), vscan_changed_cb, zfsvfs);
 dsl_pool_config_exit(dmu_objset_pool(os), FTAG);
 if (error)
  goto unregister;




 if (do_readonly)
  readonly_changed_cb(zfsvfs, readonly);
 if (do_setuid)
  setuid_changed_cb(zfsvfs, setuid);
 if (do_exec)
  exec_changed_cb(zfsvfs, exec);
 if (do_xattr)
  xattr_changed_cb(zfsvfs, xattr);
 if (do_atime)
  atime_changed_cb(zfsvfs, atime);

 nbmand_changed_cb(zfsvfs, nbmand);

 return (0);

unregister:
 dsl_prop_unregister_all(ds, zfsvfs);
 return (error);
}
