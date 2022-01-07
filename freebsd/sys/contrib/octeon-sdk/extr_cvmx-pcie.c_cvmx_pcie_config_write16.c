
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint16_t ;


 scalar_t__ __cvmx_pcie_build_config_addr (int,int,int,int,int) ;
 int cvmx_cpu_to_le16 (int ) ;
 int cvmx_write64_uint16 (scalar_t__,int ) ;

void cvmx_pcie_config_write16(int pcie_port, int bus, int dev, int fn, int reg, uint16_t val)
{
    uint64_t address = __cvmx_pcie_build_config_addr(pcie_port, bus, dev, fn, reg);
    if (address)
        cvmx_write64_uint16(address, cvmx_cpu_to_le16(val));
}
