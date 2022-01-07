
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fullname ;


 int ZFS_MAX_DATASET_NAME_LEN ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 int zfs_unmount_snap (char*) ;

__attribute__((used)) static int
recursive_unmount(const char *fsname, void *arg)
{
 const char *snapname = arg;
 char fullname[ZFS_MAX_DATASET_NAME_LEN];

 (void) snprintf(fullname, sizeof (fullname), "%s@%s", fsname, snapname);
 zfs_unmount_snap(fullname);

 return (0);
}
