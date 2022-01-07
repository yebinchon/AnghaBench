
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int f_flags; } ;
struct mtpt_info {int mi_mode; int mi_uid; int mi_gid; scalar_t__ mi_have_gid; scalar_t__ mi_have_uid; scalar_t__ mi_have_mode; scalar_t__ mi_forced_pw; } ;


 int MNT_RDONLY ;
 int chmod (char const*,int) ;
 int chown (char const*,int,int) ;
 int debugprintf (char*,char const*,...) ;
 int err (int,char*,char const*,...) ;
 int norun ;
 int statfs (char const*,struct statfs*) ;
 int warn (char*,char const*) ;
 int warnx (char*,char const*) ;

__attribute__((used)) static void
do_mtptsetup(const char *mtpoint, struct mtpt_info *mip)
{
 struct statfs sfs;

 if (!mip->mi_have_mode && !mip->mi_have_uid && !mip->mi_have_gid)
  return;

 if (!norun) {
  if (statfs(mtpoint, &sfs) == -1) {
   warn("statfs: %s", mtpoint);
   return;
  }
  if ((sfs.f_flags & MNT_RDONLY) != 0) {
   if (mip->mi_forced_pw) {
    warnx(
 "Not changing mode/owner of %s since it is read-only",
        mtpoint);
   } else {
    debugprintf(
 "Not changing mode/owner of %s since it is read-only",
        mtpoint);
   }
   return;
  }
 }

 if (mip->mi_have_mode) {
  debugprintf("changing mode of %s to %o.", mtpoint,
      mip->mi_mode);
  if (!norun)
   if (chmod(mtpoint, mip->mi_mode) == -1)
    err(1, "chmod: %s", mtpoint);
 }




 if (mip->mi_have_uid) {
  debugprintf("changing owner (user) or %s to %u.", mtpoint,
      mip->mi_uid);
  if (!norun)
   if (chown(mtpoint, mip->mi_uid, -1) == -1)
    err(1, "chown %s to %u (user)", mtpoint,
        mip->mi_uid);
 }
 if (mip->mi_have_gid) {
  debugprintf("changing owner (group) or %s to %u.", mtpoint,
      mip->mi_gid);
  if (!norun)
   if (chown(mtpoint, -1, mip->mi_gid) == -1)
    err(1, "chown %s to %u (group)", mtpoint,
        mip->mi_gid);
 }
}
