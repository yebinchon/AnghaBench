
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnstat {scalar_t__ vn_mode; int vn_size; int vn_fileid; int vn_fsid; } ;
struct vnode {int v_type; } ;
struct TYPE_2__ {scalar_t__ va_mode; int va_fileid; int va_fsid; } ;
struct nfsnode {TYPE_1__ n_vattr; int n_size; } ;
typedef int nfsnode ;
typedef scalar_t__ mode_t ;
typedef int kvm_t ;


 scalar_t__ S_IFBLK ;
 scalar_t__ S_IFCHR ;
 scalar_t__ S_IFDIR ;
 scalar_t__ S_IFIFO ;
 scalar_t__ S_IFLNK ;
 scalar_t__ S_IFREG ;
 scalar_t__ S_IFSOCK ;







 scalar_t__ VTONFS (struct vnode*) ;
 int kvm_read_all (int *,unsigned long,struct nfsnode*,int) ;
 int warnx (char*,void*) ;

int
nfs_filestat(kvm_t *kd, struct vnode *vp, struct vnstat *vn)
{
 struct nfsnode nfsnode;
 mode_t mode;

 if (!kvm_read_all(kd, (unsigned long)VTONFS(vp), &nfsnode,
     sizeof(nfsnode))) {
  warnx("can't read nfsnode at %p",
      (void *)VTONFS(vp));
  return (1);
 }
 vn->vn_fsid = nfsnode.n_vattr.va_fsid;
 vn->vn_fileid = nfsnode.n_vattr.va_fileid;
 vn->vn_size = nfsnode.n_size;
 mode = (mode_t)nfsnode.n_vattr.va_mode;
 switch (vp->v_type) {
 case 129:
  mode |= S_IFREG;
  break;
 case 132:
  mode |= S_IFDIR;
  break;
 case 134:
  mode |= S_IFBLK;
  break;
 case 133:
  mode |= S_IFCHR;
  break;
 case 130:
  mode |= S_IFLNK;
  break;
 case 128:
  mode |= S_IFSOCK;
  break;
 case 131:
  mode |= S_IFIFO;
  break;
 default:
  break;
 };
 vn->vn_mode = mode;
 return (0);
}
