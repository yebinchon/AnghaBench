
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ z_groupquota_obj; scalar_t__ z_userquota_obj; int z_os; scalar_t__ z_replay; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef scalar_t__ uint64_t ;
typedef int longlong_t ;
typedef int boolean_t ;


 int B_FALSE ;
 scalar_t__ DMU_GROUPUSED_OBJECT ;
 scalar_t__ DMU_USERUSED_OBJECT ;
 int sprintf (char*,char*,int ) ;
 int zap_lookup (int ,scalar_t__,char*,int,int,scalar_t__*) ;

boolean_t
zfs_fuid_overquota(zfsvfs_t *zfsvfs, boolean_t isgroup, uint64_t fuid)
{
 char buf[32];
 uint64_t used, quota, usedobj, quotaobj;
 int err;

 usedobj = isgroup ? DMU_GROUPUSED_OBJECT : DMU_USERUSED_OBJECT;
 quotaobj = isgroup ? zfsvfs->z_groupquota_obj : zfsvfs->z_userquota_obj;

 if (quotaobj == 0 || zfsvfs->z_replay)
  return (B_FALSE);

 (void) sprintf(buf, "%llx", (longlong_t)fuid);
 err = zap_lookup(zfsvfs->z_os, quotaobj, buf, 8, 1, &quota);
 if (err != 0)
  return (B_FALSE);

 err = zap_lookup(zfsvfs->z_os, usedobj, buf, 8, 1, &used);
 if (err != 0)
  return (B_FALSE);
 return (used >= quota);
}
