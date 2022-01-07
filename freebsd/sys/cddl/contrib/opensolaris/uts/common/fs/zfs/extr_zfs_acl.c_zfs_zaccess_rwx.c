
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int znode_t ;
typedef int mode_t ;
typedef int cred_t ;


 int B_FALSE ;
 int zfs_unix_to_v4 (int) ;
 int zfs_zaccess (int *,int ,int,int ,int *) ;

int
zfs_zaccess_rwx(znode_t *zp, mode_t mode, int flags, cred_t *cr)
{
 return (zfs_zaccess(zp, zfs_unix_to_v4(mode >> 6), flags, B_FALSE, cr));
}
