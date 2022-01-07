
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int z_version; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef int zfs_object_ace_t ;
typedef int zfs_fuid_info_t ;
struct TYPE_17__ {scalar_t__ z_version; int z_acl_count; int z_hints; int z_acl; int z_acl_bytes; } ;
typedef TYPE_2__ zfs_acl_t ;
struct TYPE_18__ {int z_ace_count; int z_size; int z_acldata; } ;
typedef TYPE_3__ zfs_acl_node_t ;
typedef int vtype_t ;
struct TYPE_19__ {int vsa_aclcnt; int vsa_mask; int vsa_aclflags; scalar_t__ vsa_aclentp; } ;
typedef TYPE_4__ vsecattr_t ;
typedef int cred_t ;
typedef int ace_t ;


 int ACL_AUTO_INHERIT ;
 int ACL_DEFAULTED ;
 int ACL_PROTECTED ;
 int EINVAL ;
 int MAX_ACL_ENTRIES ;
 int SET_ERROR (int ) ;
 int VSA_ACE_ACLFLAGS ;
 int ZFS_ACL_AUTO_INHERIT ;
 int ZFS_ACL_DEFAULTED ;
 int ZFS_ACL_PROTECTED ;
 scalar_t__ ZFS_ACL_VERSION_INITIAL ;
 int list_insert_head (int *,TYPE_3__*) ;
 TYPE_2__* zfs_acl_alloc (int ) ;
 int zfs_acl_free (TYPE_2__*) ;
 TYPE_3__* zfs_acl_node_alloc (int) ;
 int zfs_acl_node_free (TYPE_3__*) ;
 int zfs_acl_version (int ) ;
 int zfs_copy_ace_2_fuid (TYPE_1__*,int ,TYPE_2__*,scalar_t__,int ,int,int *,int **,int *) ;
 int zfs_copy_ace_2_oldace (int ,TYPE_2__*,int *,int ,int,int *) ;

int
zfs_vsec_2_aclp(zfsvfs_t *zfsvfs, vtype_t obj_type,
    vsecattr_t *vsecp, cred_t *cr, zfs_fuid_info_t **fuidp, zfs_acl_t **zaclp)
{
 zfs_acl_t *aclp;
 zfs_acl_node_t *aclnode;
 int aclcnt = vsecp->vsa_aclcnt;
 int error;

 if (vsecp->vsa_aclcnt > MAX_ACL_ENTRIES || vsecp->vsa_aclcnt <= 0)
  return (SET_ERROR(EINVAL));

 aclp = zfs_acl_alloc(zfs_acl_version(zfsvfs->z_version));

 aclp->z_hints = 0;
 aclnode = zfs_acl_node_alloc(aclcnt * sizeof (zfs_object_ace_t));
 if (aclp->z_version == ZFS_ACL_VERSION_INITIAL) {
  if ((error = zfs_copy_ace_2_oldace(obj_type, aclp,
      (ace_t *)vsecp->vsa_aclentp, aclnode->z_acldata,
      aclcnt, &aclnode->z_size)) != 0) {
   zfs_acl_free(aclp);
   zfs_acl_node_free(aclnode);
   return (error);
  }
 } else {
  if ((error = zfs_copy_ace_2_fuid(zfsvfs, obj_type, aclp,
      vsecp->vsa_aclentp, aclnode->z_acldata, aclcnt,
      &aclnode->z_size, fuidp, cr)) != 0) {
   zfs_acl_free(aclp);
   zfs_acl_node_free(aclnode);
   return (error);
  }
 }
 aclp->z_acl_bytes = aclnode->z_size;
 aclnode->z_ace_count = aclcnt;
 aclp->z_acl_count = aclcnt;
 list_insert_head(&aclp->z_acl, aclnode);




 if (vsecp->vsa_mask & VSA_ACE_ACLFLAGS) {
  if (vsecp->vsa_aclflags & ACL_PROTECTED)
   aclp->z_hints |= ZFS_ACL_PROTECTED;
  if (vsecp->vsa_aclflags & ACL_DEFAULTED)
   aclp->z_hints |= ZFS_ACL_DEFAULTED;
  if (vsecp->vsa_aclflags & ACL_AUTO_INHERIT)
   aclp->z_hints |= ZFS_ACL_AUTO_INHERIT;
 }

 *zaclp = aclp;

 return (0);
}
