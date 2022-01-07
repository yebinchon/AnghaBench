
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int cvmx_read64_uint32 (int) ;

__attribute__((used)) static inline uint32_t cvmx_pcie_npei_read32(uint64_t address)
{
 return cvmx_read64_uint32(address ^ 4);
}
