
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int register_t ;


 int SCALE_SHIFT ;
 size_t curcpu ;
 int intr_disable () ;
 int intr_restore (int ) ;
 int nsec_scale ;
 int rdtsc () ;
 int* tsc_skew ;

uint64_t
dtrace_gethrtime(void)
{
 uint64_t tsc;
 uint32_t lo, hi;
 register_t rflags;







 rflags = intr_disable();
 tsc = rdtsc() - tsc_skew[curcpu];
 intr_restore(rflags);

 lo = tsc;
 hi = tsc >> 32;
 return (((lo * nsec_scale) >> SCALE_SHIFT) +
     ((hi * nsec_scale) << (32 - SCALE_SHIFT)));
}
