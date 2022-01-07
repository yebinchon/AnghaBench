
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {size_t (* ace_abstract_size ) () ;int (* ace_size ) (void*) ;} ;
struct TYPE_13__ {size_t z_acl_bytes; int z_acl_count; int z_acl; TYPE_1__ z_ops; int z_hints; } ;
typedef TYPE_2__ zfs_acl_t ;
struct TYPE_14__ {int z_ace_count; int z_size; void* z_acldata; } ;
typedef TYPE_3__ zfs_acl_node_t ;
typedef scalar_t__ vtype_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_15__ {scalar_t__ everyone; scalar_t__ group; scalar_t__ owner; scalar_t__ deny2; scalar_t__ deny1; scalar_t__ allow0; } ;
typedef TYPE_4__ trivial_acl_t ;
typedef int mode_t ;
typedef int boolean_t ;




 int ACE_DIRECTORY_INHERIT_ACE ;
 int ACE_EVERYONE ;
 int ACE_FILE_INHERIT_ACE ;
 int ACE_INHERIT_ONLY_ACE ;
 int ACE_OWNER ;


 int ACE_TYPE_FLAGS ;
 int ALLOW ;
 int DENY ;
 int OWNING_GROUP ;
 scalar_t__ VDIR ;
 int ZFS_ACL_OBJ_ACE ;
 int ZFS_INHERIT_ACE ;
 int acl_trivial_access_masks (int ,int,TYPE_4__*) ;
 int list_insert_tail (int *,TYPE_3__*) ;
 size_t stub1 () ;
 int stub2 (void*) ;
 void* zfs_acl_next_ace (TYPE_2__*,void*,int*,scalar_t__*,int*,int*) ;
 TYPE_3__* zfs_acl_node_alloc (size_t) ;
 int zfs_acl_release_nodes (TYPE_2__*) ;
 int zfs_set_ace (TYPE_2__*,void*,scalar_t__,int,int,int) ;

__attribute__((used)) static void
zfs_acl_chmod(vtype_t vtype, uint64_t mode, boolean_t split, boolean_t trim,
    zfs_acl_t *aclp)
{
 void *acep = ((void*)0);
 uint64_t who;
 int new_count, new_bytes;
 int ace_size;
 int entry_type;
 uint16_t iflags, type;
 uint32_t access_mask;
 zfs_acl_node_t *newnode;
 size_t abstract_size = aclp->z_ops.ace_abstract_size();
 void *zacep;
 boolean_t isdir;
 trivial_acl_t masks;

 new_count = new_bytes = 0;

 isdir = (vtype == VDIR);

 acl_trivial_access_masks((mode_t)mode, isdir, &masks);

 newnode = zfs_acl_node_alloc((abstract_size * 6) + aclp->z_acl_bytes);

 zacep = newnode->z_acldata;
 if (masks.allow0) {
  zfs_set_ace(aclp, zacep, masks.allow0, ALLOW, -1, ACE_OWNER);
  zacep = (void *)((uintptr_t)zacep + abstract_size);
  new_count++;
  new_bytes += abstract_size;
 }
 if (masks.deny1) {
  zfs_set_ace(aclp, zacep, masks.deny1, DENY, -1, ACE_OWNER);
  zacep = (void *)((uintptr_t)zacep + abstract_size);
  new_count++;
  new_bytes += abstract_size;
 }
 if (masks.deny2) {
  zfs_set_ace(aclp, zacep, masks.deny2, DENY, -1, OWNING_GROUP);
  zacep = (void *)((uintptr_t)zacep + abstract_size);
  new_count++;
  new_bytes += abstract_size;
 }

 while (acep = zfs_acl_next_ace(aclp, acep, &who, &access_mask,
     &iflags, &type)) {
  entry_type = (iflags & ACE_TYPE_FLAGS);






  if (split && (entry_type == ACE_OWNER ||
      entry_type == OWNING_GROUP ||
      entry_type == ACE_EVERYONE)) {
   if (!isdir || !(iflags &
       (ACE_FILE_INHERIT_ACE|ACE_DIRECTORY_INHERIT_ACE)))
    continue;







   iflags |= ACE_INHERIT_ONLY_ACE;
  }






  if (isdir && (iflags &
      (ACE_FILE_INHERIT_ACE|ACE_DIRECTORY_INHERIT_ACE)))
   aclp->z_hints |= ZFS_INHERIT_ACE;

  if ((type != ALLOW && type != DENY) ||
      (iflags & ACE_INHERIT_ONLY_ACE)) {
   switch (type) {
   case 131:
   case 130:
   case 128:
   case 129:
    aclp->z_hints |= ZFS_ACL_OBJ_ACE;
    break;
   }
  } else {






   if ((type == ALLOW) && trim)
    access_mask &= masks.group;
  }
  zfs_set_ace(aclp, zacep, access_mask, type, who, iflags);
  ace_size = aclp->z_ops.ace_size(acep);
  zacep = (void *)((uintptr_t)zacep + ace_size);
  new_count++;
  new_bytes += ace_size;
 }
 zfs_set_ace(aclp, zacep, masks.owner, ALLOW, -1, ACE_OWNER);
 zacep = (void *)((uintptr_t)zacep + abstract_size);
 zfs_set_ace(aclp, zacep, masks.group, ALLOW, -1, OWNING_GROUP);
 zacep = (void *)((uintptr_t)zacep + abstract_size);
 zfs_set_ace(aclp, zacep, masks.everyone, ALLOW, -1, ACE_EVERYONE);

 new_count += 3;
 new_bytes += abstract_size * 3;
 zfs_acl_release_nodes(aclp);
 aclp->z_acl_count = new_count;
 aclp->z_acl_bytes = new_bytes;
 newnode->z_ace_count = new_count;
 newnode->z_size = new_bytes;
 list_insert_tail(&aclp->z_acl, newnode);
}
