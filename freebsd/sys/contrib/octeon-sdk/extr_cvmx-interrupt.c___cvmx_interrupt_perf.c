
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;


 int COP0_PERFVALUE0 ;
 int CVMX_MF_COP0 (unsigned long long,int ) ;
 int cvmx_collect_sample () ;

__attribute__((used)) static void __cvmx_interrupt_perf(int irq_number, uint64_t *registers, void *user_arg)
{
    uint64_t perf_counter;
    CVMX_MF_COP0(perf_counter, COP0_PERFVALUE0);
    if (perf_counter & (1ull << 63))
        cvmx_collect_sample();
}
