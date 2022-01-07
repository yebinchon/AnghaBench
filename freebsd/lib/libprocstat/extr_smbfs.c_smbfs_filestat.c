
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnstat {int vn_fileid; int vn_fsid; } ;
struct vnode {int dummy; } ;
struct TYPE_3__ {int * val; } ;
struct TYPE_4__ {TYPE_1__ f_fsid; } ;
struct smbnode {int n_ino; TYPE_2__ mnt_stat; } ;
struct mount {int n_ino; TYPE_2__ mnt_stat; } ;
typedef int node ;
typedef int mnt ;
typedef struct vnstat kvm_t ;


 scalar_t__ VTOSMB (struct vnode*) ;
 int assert (struct vnstat*) ;
 scalar_t__ getvnodemount (struct vnode*) ;
 int kvm_read_all (struct vnstat*,unsigned long,struct smbnode*,int) ;
 int warnx (char*,void*,...) ;

int
smbfs_filestat(kvm_t *kd, struct vnode *vp, struct vnstat *vn)
{
 struct smbnode node;
 struct mount mnt;
 int error;

 assert(kd);
 assert(vn);
 error = kvm_read_all(kd, (unsigned long)VTOSMB(vp), &node,
     sizeof(node));
 if (error != 0) {
  warnx("can't read smbfs fnode at %p", (void *)VTOSMB(vp));
  return (1);
 }
        error = kvm_read_all(kd, (unsigned long)getvnodemount(vp), &mnt,
     sizeof(mnt));
        if (error != 0) {
                warnx("can't read mount at %p for vnode %p",
                    (void *)getvnodemount(vp), vp);
                return (1);
        }
 vn->vn_fileid = node.n_ino;
 if (vn->vn_fileid == 0)
  vn->vn_fileid = 2;
 vn->vn_fsid = mnt.mnt_stat.f_fsid.val[0];
 return (0);
}
