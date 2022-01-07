
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct zfsmount {scalar_t__ rootobj; int objset; int const* spa; } ;
typedef int spa_t ;


 int EIO ;
 int printf (char*) ;
 scalar_t__ zfs_get_root (int const*,scalar_t__*) ;
 scalar_t__ zfs_mount_dataset (int const*,scalar_t__,int *) ;

__attribute__((used)) static int
zfs_mount(const spa_t *spa, uint64_t rootobj, struct zfsmount *mount)
{

 mount->spa = spa;




 if (rootobj == 0 && zfs_get_root(spa, &rootobj)) {
  printf("ZFS: can't find root filesystem\n");
  return (EIO);
 }

 if (zfs_mount_dataset(spa, rootobj, &mount->objset)) {
  printf("ZFS: can't open root filesystem\n");
  return (EIO);
 }

 mount->rootobj = rootobj;

 return (0);
}
