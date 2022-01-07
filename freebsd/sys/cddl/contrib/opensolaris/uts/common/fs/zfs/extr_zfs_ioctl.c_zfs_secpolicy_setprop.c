
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_prop_t ;
typedef int uint64_t ;
typedef int nvpair_t ;
typedef int cred_t ;


 int CRED () ;
 int EOPNOTSUPP ;
 int EPERM ;
 int INGLOBALZONE (int ) ;
 int SET_ERROR (int ) ;
 int ZFS_MAX_DATASET_NAME_LEN ;





 int curthread ;
 int dsl_prop_get_integer (char const*,char*,int *,char*) ;
 int is_system_labeled () ;
 int nvpair_value_string (int *,char**) ;
 int strlen (char const*) ;
 int zfs_prop_to_name (int) ;
 int zfs_secpolicy_write_perms (char const*,int ,int *) ;
 int zfs_set_slabel_policy (char const*,char*,int ) ;

__attribute__((used)) static int
zfs_secpolicy_setprop(const char *dsname, zfs_prop_t prop, nvpair_t *propval,
    cred_t *cr)
{
 char *strval;




 switch (prop) {
 case 128:



  if (!INGLOBALZONE(curthread))
   return (SET_ERROR(EPERM));
  break;

 case 130:
 case 132:
 case 129:
  if (!INGLOBALZONE(curthread)) {
   uint64_t zoned;
   char setpoint[ZFS_MAX_DATASET_NAME_LEN];





   if (dsl_prop_get_integer(dsname, "jailed", &zoned,
       setpoint))
    return (SET_ERROR(EPERM));
   if (!zoned || strlen(dsname) <= strlen(setpoint))
    return (SET_ERROR(EPERM));
  }
  break;

 case 131:
  return (EOPNOTSUPP);

  break;
 }

 return (zfs_secpolicy_write_perms(dsname, zfs_prop_to_name(prop), cr));
}
