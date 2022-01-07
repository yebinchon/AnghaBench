
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int cvmx_ixf18201_read16 (int) ;

uint32_t cvmx_ixf18201_read32(uint16_t reg_addr)
{
    uint32_t hi, lo;

    if (reg_addr & 0x1)
    {
        return(0xdeadbeef);
    }
    lo = cvmx_ixf18201_read16(reg_addr);
    hi = cvmx_ixf18201_read16(reg_addr + 1);
    return((hi << 16) | lo);
}
