
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ z_acl_version; scalar_t__ z_acl_count; int * z_ace_data; int z_acl_size; void* z_acl_extern_obj; } ;
struct TYPE_4__ {TYPE_1__ zp_acl; void** zp_pad; void* zp_zap; void* zp_gid; void* zp_uid; void* zp_flags; void* zp_rdev; void* zp_xattr; void* zp_links; void* zp_parent; void* zp_size; void* zp_mode; void* zp_gen; void** zp_ctime; void** zp_mtime; void** zp_atime; void** zp_crtime; } ;
typedef TYPE_2__ znode_phys_t ;
typedef int ace_t ;


 int ACE_SLOT_CNT ;
 int ASSERT (int) ;
 void* BSWAP_16 (scalar_t__) ;
 int BSWAP_32 (int ) ;
 void* BSWAP_64 (void*) ;
 int ZFS_ACE_SPACE ;
 scalar_t__ ZFS_ACL_VERSION ;
 int zfs_acl_byteswap (void*,int ) ;
 int zfs_oldace_byteswap (int *,int ) ;

void
zfs_znode_byteswap(void *buf, size_t size)
{
 znode_phys_t *zp = buf;

 ASSERT(size >= sizeof (znode_phys_t));

 zp->zp_crtime[0] = BSWAP_64(zp->zp_crtime[0]);
 zp->zp_crtime[1] = BSWAP_64(zp->zp_crtime[1]);
 zp->zp_atime[0] = BSWAP_64(zp->zp_atime[0]);
 zp->zp_atime[1] = BSWAP_64(zp->zp_atime[1]);
 zp->zp_mtime[0] = BSWAP_64(zp->zp_mtime[0]);
 zp->zp_mtime[1] = BSWAP_64(zp->zp_mtime[1]);
 zp->zp_ctime[0] = BSWAP_64(zp->zp_ctime[0]);
 zp->zp_ctime[1] = BSWAP_64(zp->zp_ctime[1]);
 zp->zp_gen = BSWAP_64(zp->zp_gen);
 zp->zp_mode = BSWAP_64(zp->zp_mode);
 zp->zp_size = BSWAP_64(zp->zp_size);
 zp->zp_parent = BSWAP_64(zp->zp_parent);
 zp->zp_links = BSWAP_64(zp->zp_links);
 zp->zp_xattr = BSWAP_64(zp->zp_xattr);
 zp->zp_rdev = BSWAP_64(zp->zp_rdev);
 zp->zp_flags = BSWAP_64(zp->zp_flags);
 zp->zp_uid = BSWAP_64(zp->zp_uid);
 zp->zp_gid = BSWAP_64(zp->zp_gid);
 zp->zp_zap = BSWAP_64(zp->zp_zap);
 zp->zp_pad[0] = BSWAP_64(zp->zp_pad[0]);
 zp->zp_pad[1] = BSWAP_64(zp->zp_pad[1]);
 zp->zp_pad[2] = BSWAP_64(zp->zp_pad[2]);

 zp->zp_acl.z_acl_extern_obj = BSWAP_64(zp->zp_acl.z_acl_extern_obj);
 zp->zp_acl.z_acl_size = BSWAP_32(zp->zp_acl.z_acl_size);
 zp->zp_acl.z_acl_version = BSWAP_16(zp->zp_acl.z_acl_version);
 zp->zp_acl.z_acl_count = BSWAP_16(zp->zp_acl.z_acl_count);
 if (zp->zp_acl.z_acl_version == ZFS_ACL_VERSION) {
  zfs_acl_byteswap((void *)&zp->zp_acl.z_ace_data[0],
      ZFS_ACE_SPACE);
 } else {
  zfs_oldace_byteswap((ace_t *)&zp->zp_acl.z_ace_data[0],
      ACE_SLOT_CNT);
 }
}
