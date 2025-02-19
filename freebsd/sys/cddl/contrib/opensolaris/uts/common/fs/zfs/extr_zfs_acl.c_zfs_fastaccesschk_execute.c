
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int z_pflags; scalar_t__ z_uid; scalar_t__ z_gid; int z_mode; int z_zfsvfs; int z_acl_lock; } ;
typedef TYPE_1__ znode_t ;
typedef scalar_t__ uid_t ;
typedef int cred_t ;
typedef int boolean_t ;
struct TYPE_7__ {scalar_t__ v_type; } ;


 int ACE_EXECUTE ;
 int B_FALSE ;
 int B_TRUE ;
 int DTRACE_PROBE (int ) ;
 int EACCES ;
 scalar_t__ FUID_INDEX (scalar_t__) ;
 int SET_ERROR (int ) ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;
 scalar_t__ VDIR ;
 int ZFS_AV_QUARANTINED ;
 int ZFS_ENTER (int ) ;
 int ZFS_EXIT (int ) ;
 int ZFS_NO_EXECS_DENIED ;
 int ZFS_XATTR ;
 TYPE_4__* ZTOV (TYPE_1__*) ;
 scalar_t__ crgetuid (int *) ;
 scalar_t__ groupmember (scalar_t__,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zfs__fastpath__execute__access__miss ;
 int zfs_zaccess (TYPE_1__*,int ,int ,int,int *) ;

int
zfs_fastaccesschk_execute(znode_t *zdp, cred_t *cr)
{
 boolean_t owner = B_FALSE;
 boolean_t groupmbr = B_FALSE;
 boolean_t is_attr;
 uid_t uid = crgetuid(cr);
 int error;

 if (zdp->z_pflags & ZFS_AV_QUARANTINED)
  return (SET_ERROR(EACCES));

 is_attr = ((zdp->z_pflags & ZFS_XATTR) &&
     (ZTOV(zdp)->v_type == VDIR));
 if (is_attr)
  goto slow;


 mutex_enter(&zdp->z_acl_lock);

 if (zdp->z_pflags & ZFS_NO_EXECS_DENIED) {
  mutex_exit(&zdp->z_acl_lock);
  return (0);
 }

 if (FUID_INDEX(zdp->z_uid) != 0 || FUID_INDEX(zdp->z_gid) != 0) {
  mutex_exit(&zdp->z_acl_lock);
  goto slow;
 }

 if (uid == zdp->z_uid) {
  owner = B_TRUE;
  if (zdp->z_mode & S_IXUSR) {
   mutex_exit(&zdp->z_acl_lock);
   return (0);
  } else {
   mutex_exit(&zdp->z_acl_lock);
   goto slow;
  }
 }
 if (groupmember(zdp->z_gid, cr)) {
  groupmbr = B_TRUE;
  if (zdp->z_mode & S_IXGRP) {
   mutex_exit(&zdp->z_acl_lock);
   return (0);
  } else {
   mutex_exit(&zdp->z_acl_lock);
   goto slow;
  }
 }
 if (!owner && !groupmbr) {
  if (zdp->z_mode & S_IXOTH) {
   mutex_exit(&zdp->z_acl_lock);
   return (0);
  }
 }

 mutex_exit(&zdp->z_acl_lock);

slow:
 DTRACE_PROBE(zfs__fastpath__execute__access__miss);
 ZFS_ENTER(zdp->z_zfsvfs);
 error = zfs_zaccess(zdp, ACE_EXECUTE, 0, B_FALSE, cr);
 ZFS_EXIT(zdp->z_zfsvfs);
 return (error);
}
