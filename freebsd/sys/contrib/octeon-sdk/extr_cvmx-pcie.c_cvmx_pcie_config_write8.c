
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;


 scalar_t__ __cvmx_pcie_build_config_addr (int,int,int,int,int) ;
 int cvmx_write64_uint8 (scalar_t__,int ) ;

void cvmx_pcie_config_write8(int pcie_port, int bus, int dev, int fn, int reg, uint8_t val)
{
    uint64_t address = __cvmx_pcie_build_config_addr(pcie_port, bus, dev, fn, reg);
    if (address)
        cvmx_write64_uint8(address, val);
}
