
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct vdso_timehands {int dummy; } ;


 int ENOSYS ;

int
__vdso_gettc(const struct vdso_timehands *th, u_int *tc)
{

 return (ENOSYS);
}
