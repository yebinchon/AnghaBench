
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int z_pflags; int z_uid; int z_zfsvfs; int z_sa_hdl; } ;
typedef TYPE_1__ znode_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ uid_t ;
typedef int parent ;
typedef int mode_t ;
typedef int cred_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_14__ {scalar_t__ v_type; } ;


 int ACE_APPEND_DATA ;
 int ACE_DELETE ;
 int ACE_DELETE_CHILD ;
 int ACE_EXECUTE ;
 int ACE_READ_ACL ;
 int ACE_READ_ATTRIBUTES ;
 int ACE_READ_DATA ;
 int ACE_READ_NAMED_ATTRS ;
 int ACE_SYNCHRONIZE ;
 int ACE_WRITE_ACL ;
 int ACE_WRITE_ATTRIBUTES ;
 int ACE_WRITE_DATA ;
 int ACE_WRITE_NAMED_ATTRS ;
 int ACE_WRITE_OWNER ;
 int ASSERT (int) ;
 int EACCES ;
 int SA_ZPL_PARENT (int ) ;
 int SET_ERROR (int ) ;
 scalar_t__ VDIR ;
 int VEXEC ;
 int VN_RELE (TYPE_6__*) ;
 int VREAD ;
 int VWRITE ;
 int V_APPEND ;
 int ZFS_CHECKED_MASKS ;
 int ZFS_OWNER ;
 int ZFS_XATTR ;
 TYPE_6__* ZTOV (TYPE_1__*) ;
 scalar_t__ crgetuid (int *) ;
 int sa_lookup (int ,int ,int *,int) ;
 int secpolicy_vnode_access2 (int *,TYPE_6__*,scalar_t__,int,int) ;
 int secpolicy_vnode_chown (TYPE_6__*,int *,scalar_t__) ;
 int secpolicy_vnode_remove (TYPE_6__*,int *) ;
 int secpolicy_vnode_setdac (TYPE_6__*,int *,scalar_t__) ;
 scalar_t__ zfs_fuid_map_id (int ,int ,int *,int ) ;
 int zfs_zaccess_append (TYPE_1__*,int*,scalar_t__*,int *) ;
 int zfs_zaccess_common (TYPE_1__*,int,int*,scalar_t__*,scalar_t__,int *) ;
 int zfs_zget (int ,int ,TYPE_1__**) ;

int
zfs_zaccess(znode_t *zp, int mode, int flags, boolean_t skipaclchk, cred_t *cr)
{
 uint32_t working_mode;
 int error;
 int is_attr;
 boolean_t check_privs;
 znode_t *xzp;
 znode_t *check_zp = zp;
 mode_t needed_bits;
 uid_t owner;

 is_attr = ((zp->z_pflags & ZFS_XATTR) && (ZTOV(zp)->v_type == VDIR));
 if (is_attr) {
  uint64_t parent;

  if ((error = sa_lookup(zp->z_sa_hdl,
      SA_ZPL_PARENT(zp->z_zfsvfs), &parent,
      sizeof (parent))) != 0)
   return (error);

  if ((error = zfs_zget(zp->z_zfsvfs,
      parent, &xzp)) != 0) {
   return (error);
  }

  check_zp = xzp;





  if (mode & (ACE_WRITE_DATA|ACE_APPEND_DATA)) {
   mode &= ~(ACE_WRITE_DATA|ACE_APPEND_DATA);
   mode |= ACE_WRITE_NAMED_ATTRS;
  }

  if (mode & (ACE_READ_DATA|ACE_EXECUTE)) {
   mode &= ~(ACE_READ_DATA|ACE_EXECUTE);
   mode |= ACE_READ_NAMED_ATTRS;
  }
 }


 owner = zfs_fuid_map_id(zp->z_zfsvfs, zp->z_uid, cr, ZFS_OWNER);







 needed_bits = 0;

 working_mode = mode;
 if ((working_mode & (ACE_READ_ACL|ACE_READ_ATTRIBUTES)) &&
     owner == crgetuid(cr))
  working_mode &= ~(ACE_READ_ACL|ACE_READ_ATTRIBUTES);

 if (working_mode & (ACE_READ_DATA|ACE_READ_NAMED_ATTRS|
     ACE_READ_ACL|ACE_READ_ATTRIBUTES|ACE_SYNCHRONIZE))
  needed_bits |= VREAD;
 if (working_mode & (ACE_WRITE_DATA|ACE_WRITE_NAMED_ATTRS|
     ACE_APPEND_DATA|ACE_WRITE_ATTRIBUTES|ACE_SYNCHRONIZE))
  needed_bits |= VWRITE;
 if (working_mode & ACE_EXECUTE)
  needed_bits |= VEXEC;

 if ((error = zfs_zaccess_common(check_zp, mode, &working_mode,
     &check_privs, skipaclchk, cr)) == 0) {
  if (is_attr)
   VN_RELE(ZTOV(xzp));
  return (secpolicy_vnode_access2(cr, ZTOV(zp), owner,
      needed_bits, needed_bits));
 }

 if (error && !check_privs) {
  if (is_attr)
   VN_RELE(ZTOV(xzp));
  return (error);
 }

 if (error && (flags & V_APPEND)) {
  error = zfs_zaccess_append(zp, &working_mode, &check_privs, cr);
 }

 if (error && check_privs) {
  mode_t checkmode = 0;






  error = 0;
  ASSERT(working_mode != 0);

  if ((working_mode & (ACE_READ_ACL|ACE_READ_ATTRIBUTES) &&
      owner == crgetuid(cr)))
   working_mode &= ~(ACE_READ_ACL|ACE_READ_ATTRIBUTES);

  if (working_mode & (ACE_READ_DATA|ACE_READ_NAMED_ATTRS|
      ACE_READ_ACL|ACE_READ_ATTRIBUTES|ACE_SYNCHRONIZE))
   checkmode |= VREAD;
  if (working_mode & (ACE_WRITE_DATA|ACE_WRITE_NAMED_ATTRS|
      ACE_APPEND_DATA|ACE_WRITE_ATTRIBUTES|ACE_SYNCHRONIZE))
   checkmode |= VWRITE;
  if (working_mode & ACE_EXECUTE)
   checkmode |= VEXEC;

  error = secpolicy_vnode_access2(cr, ZTOV(check_zp), owner,
      needed_bits & ~checkmode, needed_bits);

  if (error == 0 && (working_mode & ACE_WRITE_OWNER))
   error = secpolicy_vnode_chown(ZTOV(check_zp), cr, owner);
  if (error == 0 && (working_mode & ACE_WRITE_ACL))
   error = secpolicy_vnode_setdac(ZTOV(check_zp), cr, owner);

  if (error == 0 && (working_mode &
      (ACE_DELETE|ACE_DELETE_CHILD)))
   error = secpolicy_vnode_remove(ZTOV(check_zp), cr);

  if (error == 0 && (working_mode & ACE_SYNCHRONIZE)) {
   error = secpolicy_vnode_chown(ZTOV(check_zp), cr, owner);
  }
  if (error == 0) {




   if (working_mode & ~(ZFS_CHECKED_MASKS)) {
    error = SET_ERROR(EACCES);
   }
  }
 } else if (error == 0) {
  error = secpolicy_vnode_access2(cr, ZTOV(zp), owner,
      needed_bits, needed_bits);
 }


 if (is_attr)
  VN_RELE(ZTOV(xzp));

 return (error);
}
