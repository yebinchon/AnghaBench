
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ z_acl_inherit; } ;
typedef TYPE_2__ zfsvfs_t ;
struct TYPE_13__ {size_t (* ace_size ) (void*) ;size_t (* ace_data ) (void*,void**) ;scalar_t__ (* ace_flags_get ) (void*) ;int (* ace_flags_set ) (void*,scalar_t__) ;} ;
struct TYPE_15__ {TYPE_1__ z_ops; int z_hints; int z_acl_bytes; int z_acl_count; int z_acl; int z_version; } ;
typedef TYPE_3__ zfs_acl_t ;
struct TYPE_16__ {scalar_t__ z_size; int z_ace_count; void* z_acldata; } ;
typedef TYPE_4__ zfs_acl_node_t ;
typedef scalar_t__ vtype_t ;
typedef scalar_t__ uint_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int boolean_t ;


 scalar_t__ ACE_DIRECTORY_INHERIT_ACE ;
 scalar_t__ ACE_EVERYONE ;
 int ACE_EXECUTE ;
 scalar_t__ ACE_FILE_INHERIT_ACE ;
 scalar_t__ ACE_INHERITED_ACE ;
 scalar_t__ ACE_INHERIT_ONLY_ACE ;
 scalar_t__ ACE_NO_PROPAGATE_INHERIT_ACE ;
 scalar_t__ ACE_OWNER ;
 scalar_t__ ALLOW ;
 scalar_t__ ALL_INHERIT ;
 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ OWNING_GROUP ;
 int RESTRICTED_CLEAR ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;
 scalar_t__ VDIR ;
 int VERIFY (int) ;
 scalar_t__ VLNK ;
 scalar_t__ VREG ;
 scalar_t__ ZFS_ACL_DISCARD ;
 scalar_t__ ZFS_ACL_NOALLOW ;
 scalar_t__ ZFS_ACL_PASSTHROUGH ;
 scalar_t__ ZFS_ACL_PASSTHROUGH_X ;
 scalar_t__ ZFS_ACL_RESTRICTED ;
 int ZFS_INHERIT_ACE ;
 int bcopy (void*,void*,size_t) ;
 int list_insert_tail (int *,TYPE_4__*) ;
 size_t stub1 (void*) ;
 size_t stub2 (void*,void**) ;
 size_t stub3 (void*,void**) ;
 scalar_t__ stub4 (void*) ;
 int stub5 (void*,scalar_t__) ;
 int stub6 (void*,scalar_t__) ;
 int stub7 (void*,scalar_t__) ;
 int zfs_ace_can_use (scalar_t__,scalar_t__) ;
 TYPE_3__* zfs_acl_alloc (int ) ;
 void* zfs_acl_next_ace (TYPE_3__*,void*,int*,int *,scalar_t__*,scalar_t__*) ;
 TYPE_4__* zfs_acl_node_alloc (size_t) ;
 int zfs_acl_valid_ace_type (scalar_t__,scalar_t__) ;
 int zfs_set_ace (TYPE_3__*,void*,int ,scalar_t__,int,scalar_t__) ;

__attribute__((used)) static zfs_acl_t *
zfs_acl_inherit(zfsvfs_t *zfsvfs, vtype_t vtype, zfs_acl_t *paclp,
    uint64_t mode, boolean_t *need_chmod)
{
 void *pacep = ((void*)0);
 void *acep;
 zfs_acl_node_t *aclnode;
 zfs_acl_t *aclp = ((void*)0);
 uint64_t who;
 uint32_t access_mask;
 uint16_t iflags, newflags, type;
 size_t ace_size;
 void *data1, *data2;
 size_t data1sz, data2sz;
 uint_t aclinherit;
 boolean_t isdir = (vtype == VDIR);
 boolean_t isreg = (vtype == VREG);

 *need_chmod = B_TRUE;

 aclp = zfs_acl_alloc(paclp->z_version);
 aclinherit = zfsvfs->z_acl_inherit;
 if (aclinherit == ZFS_ACL_DISCARD || vtype == VLNK)
  return (aclp);

 while (pacep = zfs_acl_next_ace(paclp, pacep, &who,
     &access_mask, &iflags, &type)) {




  if (!zfs_acl_valid_ace_type(type, iflags))
   continue;




  if ((aclinherit == ZFS_ACL_NOALLOW && type == ALLOW) ||
      !zfs_ace_can_use(vtype, iflags))
   continue;





  if ((aclinherit == ZFS_ACL_PASSTHROUGH ||
      aclinherit == ZFS_ACL_PASSTHROUGH_X) &&
      ((iflags & (ACE_OWNER|ACE_EVERYONE)) ||
      ((iflags & OWNING_GROUP) == OWNING_GROUP)) &&
      (isreg || (isdir && (iflags & ACE_DIRECTORY_INHERIT_ACE))))
   *need_chmod = B_FALSE;





  if (aclinherit == ZFS_ACL_PASSTHROUGH_X && type == ALLOW &&
      !isdir && ((mode & (S_IXUSR|S_IXGRP|S_IXOTH)) == 0)) {
   access_mask &= ~ACE_EXECUTE;
  }





  if (aclinherit == ZFS_ACL_RESTRICTED && type == ALLOW) {
   access_mask &= ~RESTRICTED_CLEAR;
  }

  ace_size = aclp->z_ops.ace_size(pacep);
  aclnode = zfs_acl_node_alloc(ace_size);
  list_insert_tail(&aclp->z_acl, aclnode);
  acep = aclnode->z_acldata;

  zfs_set_ace(aclp, acep, access_mask, type,
      who, iflags|ACE_INHERITED_ACE);




  if ((data1sz = paclp->z_ops.ace_data(pacep, &data1)) != 0) {
   VERIFY((data2sz = aclp->z_ops.ace_data(acep,
       &data2)) == data1sz);
   bcopy(data1, data2, data2sz);
  }

  aclp->z_acl_count++;
  aclnode->z_ace_count++;
  aclp->z_acl_bytes += aclnode->z_size;
  newflags = aclp->z_ops.ace_flags_get(acep);





  if (!isdir || (iflags & ACE_NO_PROPAGATE_INHERIT_ACE)) {
   newflags &= ~ALL_INHERIT;
   aclp->z_ops.ace_flags_set(acep,
       newflags|ACE_INHERITED_ACE);
   continue;
  }




  aclp->z_hints |= ZFS_INHERIT_ACE;





  if ((iflags & (ACE_FILE_INHERIT_ACE |
      ACE_DIRECTORY_INHERIT_ACE)) == ACE_FILE_INHERIT_ACE) {
   newflags |= ACE_INHERIT_ONLY_ACE;
   aclp->z_ops.ace_flags_set(acep,
       newflags|ACE_INHERITED_ACE);
  } else {
   newflags &= ~ACE_INHERIT_ONLY_ACE;
   aclp->z_ops.ace_flags_set(acep,
       newflags|ACE_INHERITED_ACE);
  }
 }

 return (aclp);
}
