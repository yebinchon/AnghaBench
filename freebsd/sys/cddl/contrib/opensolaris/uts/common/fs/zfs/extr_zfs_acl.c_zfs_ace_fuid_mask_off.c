
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int offsetof (int ,int ) ;
 int z_access_mask ;
 int zfs_ace_hdr_t ;

__attribute__((used)) static int
zfs_ace_fuid_mask_off(void)
{
 return (offsetof(zfs_ace_hdr_t, z_access_mask));
}
