
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_acl_t ;
typedef int zfs_ace_hdr_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int * zfs_acl_next_ace (int *,int *,scalar_t__*,int *,int *,int *) ;

__attribute__((used)) static uint64_t
zfs_ace_walk(void *datap, uint64_t cookie, int aclcnt,
    uint16_t *flags, uint16_t *type, uint32_t *mask)
{
 zfs_acl_t *aclp = datap;
 zfs_ace_hdr_t *acep = (zfs_ace_hdr_t *)(uintptr_t)cookie;
 uint64_t who;

 acep = zfs_acl_next_ace(aclp, acep, &who, mask,
     flags, type);
 return ((uint64_t)(uintptr_t)acep);
}
