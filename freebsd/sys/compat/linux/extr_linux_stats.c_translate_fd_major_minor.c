
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int * v_rdev; } ;
struct tty {int * t_dev; } ;
struct thread {int dummy; } ;
struct stat {int st_rdev; int st_mode; } ;
struct file {scalar_t__ f_type; struct tty* f_data; struct vnode* f_vnode; } ;


 scalar_t__ DTYPE_PTS ;
 int S_ISBLK (int ) ;
 int S_ISCHR (int ) ;
 int cap_no_rights ;
 int devtoname (int *) ;
 int fdrop (struct file*,struct thread*) ;
 scalar_t__ fget (struct thread*,int,int *,struct file**) ;
 scalar_t__ linux_driver_get_major_minor (int ,int*,int*) ;

__attribute__((used)) static void
translate_fd_major_minor(struct thread *td, int fd, struct stat *buf)
{
 struct file *fp;
 struct vnode *vp;
 int major, minor;




 if ((!S_ISCHR(buf->st_mode) && !S_ISBLK(buf->st_mode)) ||
     fget(td, fd, &cap_no_rights, &fp) != 0)
  return;
 vp = fp->f_vnode;
 if (vp != ((void*)0) && vp->v_rdev != ((void*)0) &&
     linux_driver_get_major_minor(devtoname(vp->v_rdev),
      &major, &minor) == 0) {
  buf->st_rdev = (major << 8 | minor);
 } else if (fp->f_type == DTYPE_PTS) {
  struct tty *tp = fp->f_data;


  if (linux_driver_get_major_minor(devtoname(tp->t_dev),
      &major, &minor) == 0) {
   buf->st_rdev = (major << 8 | minor);
  }
 }
 fdrop(fp, td);
}
