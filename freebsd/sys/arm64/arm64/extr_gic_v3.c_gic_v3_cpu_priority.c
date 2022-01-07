
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int ICC_PMR_EL1_PRIO_MASK ;
 int PMR ;
 int gic_icc_write (int ,int) ;

__attribute__((used)) static __inline void
gic_v3_cpu_priority(uint64_t mask)
{


 gic_icc_write(PMR, mask & ICC_PMR_EL1_PRIO_MASK);
}
