
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int z_os; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef int zfs_userquota_prop_t ;
typedef scalar_t__ uint64_t ;


 int B_FALSE ;
 int ENOENT ;
 int ENOTSUP ;
 int SET_ERROR (int ) ;
 int dmu_objset_userspace_present (int ) ;
 int id_to_fuidstr (TYPE_1__*,char const*,scalar_t__,char*,int ) ;
 int zap_lookup (int ,scalar_t__,char*,int,int,scalar_t__*) ;
 scalar_t__ zfs_userquota_prop_to_obj (TYPE_1__*,int ) ;

int
zfs_userspace_one(zfsvfs_t *zfsvfs, zfs_userquota_prop_t type,
    const char *domain, uint64_t rid, uint64_t *valp)
{
 char buf[32];
 int err;
 uint64_t obj;

 *valp = 0;

 if (!dmu_objset_userspace_present(zfsvfs->z_os))
  return (SET_ERROR(ENOTSUP));

 obj = zfs_userquota_prop_to_obj(zfsvfs, type);
 if (obj == 0)
  return (0);

 err = id_to_fuidstr(zfsvfs, domain, rid, buf, B_FALSE);
 if (err)
  return (err);

 err = zap_lookup(zfsvfs->z_os, obj, buf, 8, 1, valp);
 if (err == ENOENT)
  err = 0;
 return (err);
}
