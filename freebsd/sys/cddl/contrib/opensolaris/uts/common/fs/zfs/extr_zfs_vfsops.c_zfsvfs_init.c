
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ z_version; int z_norm; int z_utf8; scalar_t__ z_case; scalar_t__ z_root; scalar_t__ z_unlinkedobj; scalar_t__ z_userquota_obj; scalar_t__ z_groupquota_obj; scalar_t__ z_fuid_obj; scalar_t__ z_shares_dir; int z_use_namecache; int z_attr_table; scalar_t__ z_use_sa; int * z_os; int z_use_fuids; int z_show_ctldir; int z_max_blksz; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef scalar_t__ uint_t ;
typedef scalar_t__ uint64_t ;
typedef int u_longlong_t ;
typedef int objset_t ;


 int ASSERT (int) ;
 int ENOENT ;
 int ENOTSUP ;
 int MASTER_NODE_OBJ ;
 int SET_ERROR (int ) ;
 int SPA_OLD_MAXBLOCKSIZE ;
 int U8_TEXTPREP_TOUPPER ;
 int USE_FUIDS (scalar_t__,int *) ;
 scalar_t__ USE_SA (scalar_t__,int *) ;
 scalar_t__ ZFS_CASE_INSENSITIVE ;
 scalar_t__ ZFS_CASE_MIXED ;
 int ZFS_FUID_TABLES ;
 int ZFS_PROP_CASE ;
 size_t ZFS_PROP_GROUPQUOTA ;
 int ZFS_PROP_NORMALIZE ;
 size_t ZFS_PROP_USERQUOTA ;
 int ZFS_PROP_UTF8ONLY ;
 int ZFS_PROP_VERSION ;
 int ZFS_ROOT_OBJ ;
 int ZFS_SA_ATTRS ;
 int ZFS_SHARES_DIR ;
 int ZFS_SNAPDIR_VISIBLE ;
 int ZFS_UNLINKED_SET ;
 int ZPL_END ;
 scalar_t__ ZPL_VERSION_SA ;
 int dmu_objset_spa (int *) ;
 int printf (char*,int ,int ) ;
 int sa_register_update_callback (int *,int ) ;
 int sa_setup (int *,scalar_t__,int ,int ,int *) ;
 scalar_t__ spa_version (int ) ;
 int zap_lookup (int *,int ,int ,int,int,scalar_t__*) ;
 int zfs_attr_table ;
 int zfs_get_zplprop (int *,int ,scalar_t__*) ;
 int zfs_sa_upgrade ;
 int * zfs_userquota_prop_prefixes ;
 scalar_t__ zfs_zpl_version_map (scalar_t__) ;

__attribute__((used)) static int
zfsvfs_init(zfsvfs_t *zfsvfs, objset_t *os)
{
 int error;
 uint64_t val;

 zfsvfs->z_max_blksz = SPA_OLD_MAXBLOCKSIZE;
 zfsvfs->z_show_ctldir = ZFS_SNAPDIR_VISIBLE;
 zfsvfs->z_os = os;

 error = zfs_get_zplprop(os, ZFS_PROP_VERSION, &zfsvfs->z_version);
 if (error != 0)
  return (error);
 if (zfsvfs->z_version >
     zfs_zpl_version_map(spa_version(dmu_objset_spa(os)))) {
  (void) printf("Can't mount a version %lld file system "
      "on a version %lld pool\n. Pool must be upgraded to mount "
      "this file system.", (u_longlong_t)zfsvfs->z_version,
      (u_longlong_t)spa_version(dmu_objset_spa(os)));
  return (SET_ERROR(ENOTSUP));
 }
 error = zfs_get_zplprop(os, ZFS_PROP_NORMALIZE, &val);
 if (error != 0)
  return (error);
 zfsvfs->z_norm = (int)val;

 error = zfs_get_zplprop(os, ZFS_PROP_UTF8ONLY, &val);
 if (error != 0)
  return (error);
 zfsvfs->z_utf8 = (val != 0);

 error = zfs_get_zplprop(os, ZFS_PROP_CASE, &val);
 if (error != 0)
  return (error);
 zfsvfs->z_case = (uint_t)val;





 if (zfsvfs->z_case == ZFS_CASE_INSENSITIVE ||
     zfsvfs->z_case == ZFS_CASE_MIXED)
  zfsvfs->z_norm |= U8_TEXTPREP_TOUPPER;

 zfsvfs->z_use_fuids = USE_FUIDS(zfsvfs->z_version, zfsvfs->z_os);
 zfsvfs->z_use_sa = USE_SA(zfsvfs->z_version, zfsvfs->z_os);

 uint64_t sa_obj = 0;
 if (zfsvfs->z_use_sa) {

  error = zap_lookup(os, MASTER_NODE_OBJ, ZFS_SA_ATTRS, 8, 1,
      &sa_obj);
  if (error != 0)
   return (error);
 }

 error = sa_setup(os, sa_obj, zfs_attr_table, ZPL_END,
     &zfsvfs->z_attr_table);
 if (error != 0)
  return (error);

 if (zfsvfs->z_version >= ZPL_VERSION_SA)
  sa_register_update_callback(os, zfs_sa_upgrade);

 error = zap_lookup(os, MASTER_NODE_OBJ, ZFS_ROOT_OBJ, 8, 1,
     &zfsvfs->z_root);
 if (error != 0)
  return (error);
 ASSERT(zfsvfs->z_root != 0);

 error = zap_lookup(os, MASTER_NODE_OBJ, ZFS_UNLINKED_SET, 8, 1,
     &zfsvfs->z_unlinkedobj);
 if (error != 0)
  return (error);

 error = zap_lookup(os, MASTER_NODE_OBJ,
     zfs_userquota_prop_prefixes[ZFS_PROP_USERQUOTA],
     8, 1, &zfsvfs->z_userquota_obj);
 if (error == ENOENT)
  zfsvfs->z_userquota_obj = 0;
 else if (error != 0)
  return (error);

 error = zap_lookup(os, MASTER_NODE_OBJ,
     zfs_userquota_prop_prefixes[ZFS_PROP_GROUPQUOTA],
     8, 1, &zfsvfs->z_groupquota_obj);
 if (error == ENOENT)
  zfsvfs->z_groupquota_obj = 0;
 else if (error != 0)
  return (error);

 error = zap_lookup(os, MASTER_NODE_OBJ, ZFS_FUID_TABLES, 8, 1,
     &zfsvfs->z_fuid_obj);
 if (error == ENOENT)
  zfsvfs->z_fuid_obj = 0;
 else if (error != 0)
  return (error);

 error = zap_lookup(os, MASTER_NODE_OBJ, ZFS_SHARES_DIR, 8, 1,
     &zfsvfs->z_shares_dir);
 if (error == ENOENT)
  zfsvfs->z_shares_dir = 0;
 else if (error != 0)
  return (error);
 zfsvfs->z_use_namecache = !zfsvfs->z_norm ||
     ((zfsvfs->z_case == ZFS_CASE_MIXED) &&
     !(zfsvfs->z_norm & ~U8_TEXTPREP_TOUPPER));

 return (0);
}
