
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnstat {int vn_mode; scalar_t__ vn_size; int vn_fileid; int vn_fsid; } ;
struct vnode {scalar_t__ v_data; } ;
struct TYPE_3__ {int * val; } ;
struct TYPE_4__ {TYPE_1__ f_fsid; } ;
struct mount {int de_mode; int de_inode; TYPE_2__ mnt_stat; } ;
struct devfs_dirent {int de_mode; int de_inode; TYPE_2__ mnt_stat; } ;
typedef int mount ;
typedef int kvm_t ;
typedef int devfs_dirent ;


 int S_IFCHR ;
 int S_IFMT ;
 scalar_t__ getvnodedata (struct vnode*) ;
 scalar_t__ getvnodemount (struct vnode*) ;
 int kvm_read_all (int *,unsigned long,struct mount*,int) ;
 int warnx (char*,void*) ;

int
devfs_filestat(kvm_t *kd, struct vnode *vp, struct vnstat *vn)
{
 struct devfs_dirent devfs_dirent;
 struct mount mount;

 if (!kvm_read_all(kd, (unsigned long)getvnodedata(vp), &devfs_dirent,
     sizeof(devfs_dirent))) {
  warnx("can't read devfs_dirent at %p",
      (void *)vp->v_data);
  return (1);
 }
 if (!kvm_read_all(kd, (unsigned long)getvnodemount(vp), &mount,
     sizeof(mount))) {
  warnx("can't read mount at %p",
      (void *)getvnodemount(vp));
  return (1);
 }
 vn->vn_fsid = mount.mnt_stat.f_fsid.val[0];
 vn->vn_fileid = devfs_dirent.de_inode;
 vn->vn_mode = (devfs_dirent.de_mode & ~S_IFMT) | S_IFCHR;
 vn->vn_size = 0;
 return (0);
}
