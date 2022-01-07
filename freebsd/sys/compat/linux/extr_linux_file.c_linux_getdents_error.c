
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {scalar_t__ v_type; } ;
struct thread {int dummy; } ;
struct file {struct vnode* f_vnode; } ;


 int ENOTDIR ;
 scalar_t__ VDIR ;
 int cap_read_rights ;
 int fdrop (struct file*,struct thread*) ;
 int getvnode (struct thread*,int,int *,struct file**) ;

__attribute__((used)) static int
linux_getdents_error(struct thread *td, int fd, int err)
{
 struct vnode *vp;
 struct file *fp;
 int error;


 error = getvnode(td, fd, &cap_read_rights, &fp);
 if (error != 0)
  return (error);
 vp = fp->f_vnode;
 if (vp->v_type != VDIR) {
  fdrop(fp, td);
  return (ENOTDIR);
 }
 fdrop(fp, td);
 return (err);
}
