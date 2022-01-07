
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int cvmx_ixf18201_write16 (int,int) ;

void cvmx_ixf18201_write32(uint16_t reg_addr, uint32_t data)
{
    uint16_t hi, lo;

    if (reg_addr & 0x1)
    {
        return;
    }
    lo = data & 0xFFFF;
    hi = data >> 16;
    cvmx_ixf18201_write16(reg_addr, lo);
    cvmx_ixf18201_write16(reg_addr + 1, hi);

}
