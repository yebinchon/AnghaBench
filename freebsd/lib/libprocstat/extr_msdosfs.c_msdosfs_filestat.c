
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct vnstat {int vn_mode; int vn_fileid; int vn_size; int vn_fsid; } ;
struct vnode {int dummy; } ;
struct denode {scalar_t__ de_pmp; int de_Attributes; int pm_mask; int pm_BytesPerSec; scalar_t__ de_StartCluster; scalar_t__ de_dirclust; int de_diroffset; int de_FileSize; int pm_dev; } ;
struct dosmount {scalar_t__ kptr; struct denode data; struct dosmount* next; } ;
struct direntry {int dummy; } ;
typedef int kvm_t ;
typedef int denode ;


 int ATTR_DIRECTORY ;
 int ATTR_READONLY ;
 scalar_t__ MSDOSFSROOT ;
 int S_IFDIR ;
 int S_IFREG ;
 scalar_t__ VTODE (struct vnode*) ;
 int cntobn (struct denode*,scalar_t__) ;
 int dev2udev (int *,int ) ;
 int free (struct dosmount*) ;
 int kvm_read_all (int *,unsigned long,struct denode*,int) ;
 struct dosmount* malloc (int) ;
 int roottobn (struct denode*,int ) ;
 int warn (char*) ;
 int warnx (char*,void*) ;

int
msdosfs_filestat(kvm_t *kd, struct vnode *vp, struct vnstat *vn)
{
 struct denode denode;
 static struct dosmount *mounts;
 struct dosmount *mnt;
 u_long dirsperblk;
 int fileid;

 if (!kvm_read_all(kd, (unsigned long)VTODE(vp), &denode,
     sizeof(denode))) {
  warnx("can't read denode at %p", (void *)VTODE(vp));
  return (1);
 }





 for (mnt = mounts; mnt; mnt = mnt->next)
  if (mnt->kptr == denode.de_pmp)
   break;

 if (!mnt) {
  if ((mnt = malloc(sizeof(struct dosmount))) == ((void*)0)) {
   warn("malloc()");
   return (1);
  }
  if (!kvm_read_all(kd, (unsigned long)denode.de_pmp,
      &mnt->data, sizeof(mnt->data))) {
   free(mnt);
       warnx("can't read mount info at %p",
       (void *)denode.de_pmp);
   return (1);
  }
  mnt->next = mounts;
  mounts = mnt;
  mnt->kptr = denode.de_pmp;
 }

 vn->vn_fsid = dev2udev(kd, mnt->data.pm_dev);
 vn->vn_mode = 0555;
 vn->vn_mode |= denode.de_Attributes & ATTR_READONLY ? 0 : 0222;
 vn->vn_mode &= mnt->data.pm_mask;


 vn->vn_mode |= denode.de_Attributes & ATTR_DIRECTORY ? S_IFDIR : S_IFREG;
 vn->vn_size = denode.de_FileSize;
 dirsperblk = mnt->data.pm_BytesPerSec / sizeof(struct direntry);
 if (denode.de_Attributes & ATTR_DIRECTORY) {
  fileid = cntobn(&mnt->data, denode.de_StartCluster)
      * dirsperblk;
  if (denode.de_StartCluster == MSDOSFSROOT)
   fileid = 1;
 } else {
  fileid = cntobn(&mnt->data, denode.de_dirclust) * dirsperblk;
  if (denode.de_dirclust == MSDOSFSROOT)
   fileid = roottobn(&mnt->data, 0) * dirsperblk;
  fileid += denode.de_diroffset / sizeof(struct direntry);
 }

 vn->vn_fileid = fileid;
 return (0);
}
