
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CVMX_L2C_COP0_MAPX (int ) ;
 int CVMX_MAX_CORES ;
 int OCTEON_CN6XXX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int assert (int) ;

__attribute__((used)) static uint64_t cvmx_power_throttle_csr_addr(int ppid)
{
    if (OCTEON_IS_MODEL(OCTEON_CN6XXX))
    {
        uint64_t csr_addr, reg_num, reg_reg, reg_sel;

        assert(ppid < CVMX_MAX_CORES);




        reg_reg = 11;
        reg_sel = 6;
        reg_num = (ppid << 8) + (reg_reg << 3) + reg_sel;
        csr_addr = CVMX_L2C_COP0_MAPX(0) + ((reg_num) << 3);

        return csr_addr;
    }
    return 0;
}
