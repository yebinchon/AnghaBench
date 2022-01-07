
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int COP0_CVMCTL ;
 int CVMX_MF_COP0 (int,int ) ;
 int CVMX_MT_COP0 (int,int ) ;

void cvmx_update_perfcnt_irq(void)
{
    uint64_t cvmctl;




    CVMX_MF_COP0(cvmctl, COP0_CVMCTL);
    cvmctl &= ~(7 << 7);
    cvmctl |= 6 << 7;
    CVMX_MT_COP0(cvmctl, COP0_CVMCTL);
}
