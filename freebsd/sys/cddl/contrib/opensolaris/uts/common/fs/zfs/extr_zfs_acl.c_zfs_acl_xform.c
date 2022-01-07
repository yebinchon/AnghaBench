
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_15__ ;


struct TYPE_18__ {int z_zfsvfs; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_19__ {int z_access_mask; int z_fuid; void* z_type; void* z_flags; } ;
typedef TYPE_2__ zfs_oldace_t ;
typedef int zfs_object_ace_t ;
struct TYPE_20__ {scalar_t__ z_version; int z_acl_count; int z_acl_bytes; int z_acl; int z_ops; } ;
typedef TYPE_3__ zfs_acl_t ;
struct TYPE_21__ {int z_ace_count; int z_size; int z_acldata; } ;
typedef TYPE_4__ zfs_acl_node_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef void* uint16_t ;
typedef int cred_t ;
struct TYPE_17__ {int v_type; } ;


 int ASSERT (int) ;
 int KM_SLEEP ;
 int VERIFY (int) ;
 scalar_t__ ZFS_ACL_VERSION ;
 scalar_t__ ZFS_ACL_VERSION_INITIAL ;
 TYPE_15__* ZTOV (TYPE_1__*) ;
 TYPE_2__* kmem_alloc (int,int ) ;
 int kmem_free (TYPE_2__*,int) ;
 int list_insert_head (int *,TYPE_4__*) ;
 int zfs_acl_fuid_ops ;
 void* zfs_acl_next_ace (TYPE_3__*,void*,int *,int *,void**,void**) ;
 TYPE_4__* zfs_acl_node_alloc (int) ;
 int zfs_acl_release_nodes (TYPE_3__*) ;
 scalar_t__ zfs_copy_ace_2_fuid (int ,int ,TYPE_3__*,TYPE_2__*,int ,int,int *,int *,int *) ;

void
zfs_acl_xform(znode_t *zp, zfs_acl_t *aclp, cred_t *cr)
{
 zfs_oldace_t *oldaclp;
 int i;
 uint16_t type, iflags;
 uint32_t access_mask;
 uint64_t who;
 void *cookie = ((void*)0);
 zfs_acl_node_t *newaclnode;

 ASSERT(aclp->z_version == ZFS_ACL_VERSION_INITIAL);







 oldaclp = kmem_alloc(sizeof (zfs_oldace_t) * aclp->z_acl_count,
     KM_SLEEP);
 i = 0;
 while (cookie = zfs_acl_next_ace(aclp, cookie, &who,
     &access_mask, &iflags, &type)) {
  oldaclp[i].z_flags = iflags;
  oldaclp[i].z_type = type;
  oldaclp[i].z_fuid = who;
  oldaclp[i++].z_access_mask = access_mask;
 }

 newaclnode = zfs_acl_node_alloc(aclp->z_acl_count *
     sizeof (zfs_object_ace_t));
 aclp->z_ops = zfs_acl_fuid_ops;
 VERIFY(zfs_copy_ace_2_fuid(zp->z_zfsvfs, ZTOV(zp)->v_type, aclp,
     oldaclp, newaclnode->z_acldata, aclp->z_acl_count,
     &newaclnode->z_size, ((void*)0), cr) == 0);
 newaclnode->z_ace_count = aclp->z_acl_count;
 aclp->z_version = ZFS_ACL_VERSION;
 kmem_free(oldaclp, aclp->z_acl_count * sizeof (zfs_oldace_t));





 zfs_acl_release_nodes(aclp);

 list_insert_head(&aclp->z_acl, newaclnode);

 aclp->z_acl_bytes = newaclnode->z_size;
 aclp->z_acl_count = newaclnode->z_ace_count;

}
