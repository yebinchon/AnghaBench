
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;


 scalar_t__ __cvmx_pcie_build_config_addr (int,int,int,int,int) ;
 int cvmx_le32_to_cpu (int ) ;
 int cvmx_read64_uint32 (scalar_t__) ;

uint32_t cvmx_pcie_config_read32(int pcie_port, int bus, int dev, int fn, int reg)
{
    uint64_t address;

    address = __cvmx_pcie_build_config_addr(pcie_port, bus, dev, fn, reg);
    if (address)
        return cvmx_le32_to_cpu(cvmx_read64_uint32(address));
    else
        return 0xffffffff;
}
