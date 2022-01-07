
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {scalar_t__ v_type; int * v_rdev; } ;
struct stat {int st_rdev; } ;


 scalar_t__ VCHR ;
 int devtoname (int *) ;
 scalar_t__ linux_driver_get_major_minor (int ,int*,int*) ;

__attribute__((used)) static void
translate_vnhook_major_minor(struct vnode *vp, struct stat *sb)
{
 int major, minor;

 if (vp->v_type == VCHR && vp->v_rdev != ((void*)0) &&
     linux_driver_get_major_minor(devtoname(vp->v_rdev),
     &major, &minor) == 0) {
  sb->st_rdev = (major << 8 | minor);
 }
}
