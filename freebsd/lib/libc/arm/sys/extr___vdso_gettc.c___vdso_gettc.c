
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct vdso_timehands {scalar_t__ th_algo; scalar_t__ th_physical; } ;


 int ENOSYS ;
 scalar_t__ VDSO_TH_ALGO_ARM_GENTIM ;
 scalar_t__ cp15_cntpct_get () ;
 scalar_t__ cp15_cntvct_get () ;

int
__vdso_gettc(const struct vdso_timehands *th, u_int *tc)
{

 if (th->th_algo != VDSO_TH_ALGO_ARM_GENTIM)
  return (ENOSYS);
 *tc = 0;
 return (ENOSYS);

}
