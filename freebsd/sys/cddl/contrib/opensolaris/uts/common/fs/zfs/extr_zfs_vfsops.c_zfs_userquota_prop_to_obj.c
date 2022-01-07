
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int z_groupquota_obj; int z_userquota_obj; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef int zfs_userquota_prop_t ;
typedef int uint64_t ;


 int DMU_GROUPUSED_OBJECT ;
 int DMU_USERUSED_OBJECT ;





__attribute__((used)) static uint64_t
zfs_userquota_prop_to_obj(zfsvfs_t *zfsvfs, zfs_userquota_prop_t type)
{
 switch (type) {
 case 128:
  return (DMU_USERUSED_OBJECT);
 case 130:
  return (DMU_GROUPUSED_OBJECT);
 case 129:
  return (zfsvfs->z_userquota_obj);
 case 131:
  return (zfsvfs->z_groupquota_obj);
 }
 return (0);
}
