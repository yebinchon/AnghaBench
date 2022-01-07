
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int va_mode; int va_uid; int va_gid; int va_nodeid; int va_rdev; int va_type; scalar_t__ va_mask; } ;
typedef TYPE_1__ vattr_t ;
typedef scalar_t__ uint_t ;
typedef int uint64_t ;
typedef scalar_t__ uid_t ;
typedef scalar_t__ gid_t ;


 int AT_GID ;
 int AT_MODE ;
 int AT_TYPE ;
 int AT_UID ;
 int IFTOVT (int) ;
 scalar_t__ IS_EPHEMERAL (int) ;
 int MODEMASK ;
 int VATTR_NULL (TYPE_1__*) ;
 int zfs_cmpldev (int) ;

__attribute__((used)) static void
zfs_init_vattr(vattr_t *vap, uint64_t mask, uint64_t mode,
    uint64_t uid, uint64_t gid, uint64_t rdev, uint64_t nodeid)
{
 VATTR_NULL(vap);
 vap->va_mask = (uint_t)mask;
 if (mask & AT_TYPE)
  vap->va_type = IFTOVT(mode);
 if (mask & AT_MODE)
  vap->va_mode = mode & MODEMASK;
 if (mask & AT_UID)
  vap->va_uid = (uid_t)(IS_EPHEMERAL(uid)) ? -1 : uid;
 if (mask & AT_GID)
  vap->va_gid = (gid_t)(IS_EPHEMERAL(gid)) ? -1 : gid;
 vap->va_rdev = zfs_cmpldev(rdev);
 vap->va_nodeid = nodeid;
}
