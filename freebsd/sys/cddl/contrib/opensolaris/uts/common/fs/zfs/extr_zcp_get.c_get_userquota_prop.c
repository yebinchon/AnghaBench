
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t zfs_userquota_prop_t ;


 size_t ZFS_NUM_USERQUOTA_PROPS ;
 int strlen (int ) ;
 scalar_t__ strncmp (char const*,int ,int ) ;
 int * zfs_userquota_prop_prefixes ;

__attribute__((used)) static zfs_userquota_prop_t
get_userquota_prop(const char *prop_name)
{
 zfs_userquota_prop_t type;

 for (type = 0; type < ZFS_NUM_USERQUOTA_PROPS; type++) {
  if (strncmp(prop_name, zfs_userquota_prop_prefixes[type],
      strlen(zfs_userquota_prop_prefixes[type])) == 0)
   break;
 }
 return (type);
}
