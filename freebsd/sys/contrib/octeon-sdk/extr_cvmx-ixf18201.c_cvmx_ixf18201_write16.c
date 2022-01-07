
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int IXF_ADDR_16 ;
 int IXF_TRANS_TYPE ;
 int IXF_WR_DATA_16 ;
 int cvmx_wait (int) ;
 int cvmx_write64_uint16 (int ,int ) ;
 int cvmx_write64_uint8 (int ,int ) ;

void cvmx_ixf18201_write16(uint16_t reg_addr, uint16_t data)
{
    cvmx_write64_uint16(IXF_ADDR_16, reg_addr);
    cvmx_write64_uint16(IXF_WR_DATA_16, data);
    cvmx_write64_uint8(IXF_TRANS_TYPE, 0);
    cvmx_wait(800000);
}
