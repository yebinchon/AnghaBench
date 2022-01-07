
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int um ;
struct vnstat {int vn_size; scalar_t__ vn_mode; int vn_fileid; int vn_fsid; } ;
struct vnode {int dummy; } ;
struct ufsmount {int i_size; scalar_t__ i_mode; int i_number; int um_dev; scalar_t__ i_ump; } ;
struct inode {int i_size; scalar_t__ i_mode; int i_number; int um_dev; scalar_t__ i_ump; } ;
typedef scalar_t__ mode_t ;
typedef int kvm_t ;
typedef int inode ;


 scalar_t__ VTOI (struct vnode*) ;
 int dev2udev (int *,int ) ;
 int kvm_read_all (int *,unsigned long,struct ufsmount*,int) ;
 int warnx (char*,void*) ;

int
ufs_filestat(kvm_t *kd, struct vnode *vp, struct vnstat *vn)
{
 struct inode inode;
 struct ufsmount um;

 if (!kvm_read_all(kd, (unsigned long)VTOI(vp), &inode, sizeof(inode))) {
  warnx("can't read inode at %p", (void *)VTOI(vp));
  return (1);
 }
 if (!kvm_read_all(kd, (unsigned long)inode.i_ump, &um, sizeof(um))) {
  warnx("can't read ufsmount at %p", (void *)inode.i_ump);
  return (1);
 }





 vn->vn_fsid = dev2udev(kd, um.um_dev);
 vn->vn_fileid = inode.i_number;
 vn->vn_mode = (mode_t)inode.i_mode;
 vn->vn_size = inode.i_size;
 return (0);
}
