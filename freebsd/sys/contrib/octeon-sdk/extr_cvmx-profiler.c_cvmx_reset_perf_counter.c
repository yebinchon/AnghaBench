
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int COP0_PERFVALUE0 ;
 int COP0_PERFVALUE1 ;
 int CVMX_MT_COP0 (scalar_t__,int ) ;

__attribute__((used)) static
void cvmx_reset_perf_counter(int pf, uint64_t events)
{
    uint64_t pfc;
    pfc = (1ull << 63) - events;

    if (!pf) {
        CVMX_MT_COP0(pfc, COP0_PERFVALUE0);
    } else
        CVMX_MT_COP0(pfc, COP0_PERFVALUE1);
}
