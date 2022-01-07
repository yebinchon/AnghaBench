
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B_TRUE ;
 int zfs_ace_byteswap (void*,size_t,int ) ;

void
zfs_acl_byteswap(void *buf, size_t size)
{
 zfs_ace_byteswap(buf, size, B_TRUE);
}
