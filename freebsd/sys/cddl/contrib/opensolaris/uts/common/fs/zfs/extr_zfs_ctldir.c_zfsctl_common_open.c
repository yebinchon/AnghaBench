
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_open_args {int a_mode; } ;


 int EACCES ;
 int FWRITE ;
 int SET_ERROR (int ) ;

__attribute__((used)) static int
zfsctl_common_open(struct vop_open_args *ap)
{
 int flags = ap->a_mode;

 if (flags & FWRITE)
  return (SET_ERROR(EACCES));

 return (0);
}
