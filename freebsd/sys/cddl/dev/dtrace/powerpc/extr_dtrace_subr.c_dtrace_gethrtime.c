
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int SCALE_SHIFT ;
 size_t curcpu ;
 int mftb () ;
 int nsec_scale ;
 int* timebase_skew ;

uint64_t
dtrace_gethrtime()
{
 uint64_t timebase;
 uint32_t lo;
 uint32_t hi;







 timebase = mftb() - timebase_skew[curcpu];
 lo = timebase;
 hi = timebase >> 32;
 return (((lo * nsec_scale) >> SCALE_SHIFT) +
     ((hi * nsec_scale) << (32 - SCALE_SHIFT)));
}
