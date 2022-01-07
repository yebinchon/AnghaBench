
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lzh; } ;
typedef TYPE_1__ libbe_handle_t ;


 int BE_ERR_INVALIDNAME ;
 int BE_ERR_NOENT ;
 int BE_ERR_PATHLEN ;
 int BE_ERR_SUCCESS ;
 scalar_t__ BE_MAXPATHLEN ;
 int ZFS_TYPE_SNAPSHOT ;
 scalar_t__ strlen (char const*) ;
 int zfs_dataset_exists (int ,char const*,int ) ;
 int zfs_name_valid (char const*,int ) ;

int
be_validate_snap(libbe_handle_t *lbh, const char *snap_name)
{

 if (strlen(snap_name) >= BE_MAXPATHLEN)
  return (BE_ERR_PATHLEN);

 if (!zfs_name_valid(snap_name, ZFS_TYPE_SNAPSHOT))
  return (BE_ERR_INVALIDNAME);

 if (!zfs_dataset_exists(lbh->lzh, snap_name,
     ZFS_TYPE_SNAPSHOT))
  return (BE_ERR_NOENT);

 return (BE_ERR_SUCCESS);
}
