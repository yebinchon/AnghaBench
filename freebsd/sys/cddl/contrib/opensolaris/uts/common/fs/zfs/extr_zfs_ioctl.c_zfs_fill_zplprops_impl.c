
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_6__ {TYPE_1__* os_phys; } ;
typedef TYPE_2__ objset_t ;
typedef int nvlist_t ;
typedef int boolean_t ;
struct TYPE_5__ {scalar_t__ os_type; } ;


 int ASSERT (int ) ;
 scalar_t__ DMU_OST_ZFS ;
 int EINVAL ;
 int ENOTSUP ;
 int SET_ERROR (int ) ;
 int VERIFY (int) ;
 scalar_t__ ZFS_CASE_INSENSITIVE ;
 int ZFS_PROP_CASE ;
 int ZFS_PROP_NORMALIZE ;
 scalar_t__ ZFS_PROP_UNDEFINED ;
 int ZFS_PROP_UTF8ONLY ;
 int ZFS_PROP_VERSION ;
 scalar_t__ ZPL_VERSION ;
 scalar_t__ ZPL_VERSION_FUID ;
 scalar_t__ ZPL_VERSION_INITIAL ;
 scalar_t__ ZPL_VERSION_NORMALIZATION ;
 scalar_t__ ZPL_VERSION_SA ;
 scalar_t__ nvlist_add_uint64 (int *,int ,scalar_t__) ;
 int nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 int nvlist_remove_all (int *,int ) ;
 scalar_t__ zfs_get_zplprop (TYPE_2__*,int ,scalar_t__*) ;
 int zfs_prop_to_name (int ) ;

__attribute__((used)) static int
zfs_fill_zplprops_impl(objset_t *os, uint64_t zplver,
    boolean_t fuids_ok, boolean_t sa_ok, nvlist_t *createprops,
    nvlist_t *zplprops, boolean_t *is_ci)
{
 uint64_t sense = ZFS_PROP_UNDEFINED;
 uint64_t norm = ZFS_PROP_UNDEFINED;
 uint64_t u8 = ZFS_PROP_UNDEFINED;

 ASSERT(zplprops != ((void*)0));

 if (os != ((void*)0) && os->os_phys->os_type != DMU_OST_ZFS)
  return (SET_ERROR(EINVAL));




 if (createprops) {
  (void) nvlist_lookup_uint64(createprops,
      zfs_prop_to_name(ZFS_PROP_VERSION), &zplver);
  (void) nvlist_lookup_uint64(createprops,
      zfs_prop_to_name(ZFS_PROP_NORMALIZE), &norm);
  (void) nvlist_remove_all(createprops,
      zfs_prop_to_name(ZFS_PROP_NORMALIZE));
  (void) nvlist_lookup_uint64(createprops,
      zfs_prop_to_name(ZFS_PROP_UTF8ONLY), &u8);
  (void) nvlist_remove_all(createprops,
      zfs_prop_to_name(ZFS_PROP_UTF8ONLY));
  (void) nvlist_lookup_uint64(createprops,
      zfs_prop_to_name(ZFS_PROP_CASE), &sense);
  (void) nvlist_remove_all(createprops,
      zfs_prop_to_name(ZFS_PROP_CASE));
 }







 if ((zplver < ZPL_VERSION_INITIAL || zplver > ZPL_VERSION) ||
     (zplver >= ZPL_VERSION_FUID && !fuids_ok) ||
     (zplver >= ZPL_VERSION_SA && !sa_ok) ||
     (zplver < ZPL_VERSION_NORMALIZATION &&
     (norm != ZFS_PROP_UNDEFINED || u8 != ZFS_PROP_UNDEFINED ||
     sense != ZFS_PROP_UNDEFINED)))
  return (SET_ERROR(ENOTSUP));




 VERIFY(nvlist_add_uint64(zplprops,
     zfs_prop_to_name(ZFS_PROP_VERSION), zplver) == 0);

 if (norm == ZFS_PROP_UNDEFINED)
  VERIFY(zfs_get_zplprop(os, ZFS_PROP_NORMALIZE, &norm) == 0);
 VERIFY(nvlist_add_uint64(zplprops,
     zfs_prop_to_name(ZFS_PROP_NORMALIZE), norm) == 0);




 if (norm)
  u8 = 1;
 if (u8 == ZFS_PROP_UNDEFINED)
  VERIFY(zfs_get_zplprop(os, ZFS_PROP_UTF8ONLY, &u8) == 0);
 VERIFY(nvlist_add_uint64(zplprops,
     zfs_prop_to_name(ZFS_PROP_UTF8ONLY), u8) == 0);

 if (sense == ZFS_PROP_UNDEFINED)
  VERIFY(zfs_get_zplprop(os, ZFS_PROP_CASE, &sense) == 0);
 VERIFY(nvlist_add_uint64(zplprops,
     zfs_prop_to_name(ZFS_PROP_CASE), sense) == 0);

 if (is_ci)
  *is_ci = (sense == ZFS_CASE_INSENSITIVE);

 return (0);
}
