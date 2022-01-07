
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int cvmx_read64_uint32 (int) ;
 int cvmx_write64_uint32 (int,int ) ;

__attribute__((used)) static inline void cvmx_pcie_npei_write32(uint64_t address, uint32_t val)
{
 cvmx_write64_uint32(address ^ 4, val);
 cvmx_read64_uint32(address ^ 4);
}
