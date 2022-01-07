
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef size_t u_int ;
struct vdso_timehands {int th_algo; size_t th_x86_hpet_idx; int th_x86_shift; } ;


 int ENOSYS ;
 size_t HPET_DEV_MAP_MAX ;
 int HPET_MAIN_COUNTER ;
 char volatile* MAP_FAILED ;



 size_t __vdso_gettc_rdtsc_low (struct vdso_timehands const*) ;
 int __vdso_hyperv_tsc (char volatile*,size_t*) ;
 int __vdso_init_hpet (size_t) ;
 int __vdso_init_hyperv_tsc () ;
 size_t __vdso_rdtsc32 () ;
 scalar_t__ atomic_load_acq_ptr (uintptr_t volatile*) ;
 int * hpet_dev_map ;
 char volatile* hyperv_ref_tsc ;

int
__vdso_gettc(const struct vdso_timehands *th, u_int *tc)
{
 volatile char *map;
 uint32_t idx;

 switch (th->th_algo) {
 case 128:
  *tc = th->th_x86_shift > 0 ? __vdso_gettc_rdtsc_low(th) :
      __vdso_rdtsc32();
  return (0);
 case 130:
  idx = th->th_x86_hpet_idx;
  if (idx >= HPET_DEV_MAP_MAX)
   return (ENOSYS);
  map = (volatile char *)atomic_load_acq_ptr(
      (volatile uintptr_t *)&hpet_dev_map[idx]);
  if (map == ((void*)0)) {
   __vdso_init_hpet(idx);
   map = (volatile char *)atomic_load_acq_ptr(
       (volatile uintptr_t *)&hpet_dev_map[idx]);
  }
  if (map == MAP_FAILED)
   return (ENOSYS);
  *tc = *(volatile uint32_t *)(map + HPET_MAIN_COUNTER);
  return (0);
 default:
  return (ENOSYS);
 }
}
