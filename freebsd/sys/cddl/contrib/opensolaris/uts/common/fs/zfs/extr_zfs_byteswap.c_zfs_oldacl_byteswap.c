
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ace_t ;


 int zfs_oldace_byteswap (int *,int) ;

void
zfs_oldacl_byteswap(void *buf, size_t size)
{
 int cnt;






 cnt = size / sizeof (ace_t);

 zfs_oldace_byteswap((ace_t *)buf, cnt);
}
