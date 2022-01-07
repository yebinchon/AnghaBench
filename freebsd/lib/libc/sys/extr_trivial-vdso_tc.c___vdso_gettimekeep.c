
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdso_timekeep {int dummy; } ;


 int ENOSYS ;

int
__vdso_gettimekeep(struct vdso_timekeep **tk)
{

 return (ENOSYS);
}
