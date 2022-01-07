
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {scalar_t__ v_type; } ;
struct thread {int dummy; } ;
struct linux_pread_args {int fd; int offset; int nbyte; int buf; } ;


 int EISDIR ;
 scalar_t__ VDIR ;
 int cap_pread_rights ;
 int fgetvp (struct thread*,int ,int *,struct vnode**) ;
 int kern_pread (struct thread*,int ,int ,int ,int ) ;
 int vrele (struct vnode*) ;

int
linux_pread(struct thread *td, struct linux_pread_args *uap)
{
 struct vnode *vp;
 int error;

 error = kern_pread(td, uap->fd, uap->buf, uap->nbyte, uap->offset);
 if (error == 0) {

  error = fgetvp(td, uap->fd, &cap_pread_rights, &vp);
  if (error != 0)
   return (error);
  if (vp->v_type == VDIR) {
   vrele(vp);
   return (EISDIR);
  }
  vrele(vp);
 }
 return (error);
}
