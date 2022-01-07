
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct linux_file {struct vnode* f_vnode; } ;
struct kinfo_file {int kf_type; } ;
struct filedesc {int dummy; } ;
struct file {struct linux_file* f_data; } ;


 int FILEDESC_SLOCK (struct filedesc*) ;
 int FILEDESC_SUNLOCK (struct filedesc*) ;
 int KF_TYPE_DEV ;
 int KF_TYPE_VNODE ;
 int vn_fill_kinfo_vnode (struct vnode*,struct kinfo_file*) ;
 int vref (struct vnode*) ;
 int vrele (struct vnode*) ;

__attribute__((used)) static int
linux_file_fill_kinfo(struct file *fp, struct kinfo_file *kif,
    struct filedesc *fdp)
{
 struct linux_file *filp;
 struct vnode *vp;
 int error;

 filp = fp->f_data;
 vp = filp->f_vnode;
 if (vp == ((void*)0)) {
  error = 0;
  kif->kf_type = KF_TYPE_DEV;
 } else {
  vref(vp);
  FILEDESC_SUNLOCK(fdp);
  error = vn_fill_kinfo_vnode(vp, kif);
  vrele(vp);
  kif->kf_type = KF_TYPE_VNODE;
  FILEDESC_SLOCK(fdp);
 }
 return (error);
}
