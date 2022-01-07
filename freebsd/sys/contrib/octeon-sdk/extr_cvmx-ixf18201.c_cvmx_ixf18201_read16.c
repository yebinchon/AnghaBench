
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int IXF_ADDR_16 ;
 int IXF_RD_DATA_16 ;
 int IXF_TRANS_TYPE ;
 int cvmx_read64_uint16 (int ) ;
 int cvmx_wait (int) ;
 int cvmx_write64_uint16 (int ,int ) ;
 int cvmx_write64_uint8 (int ,int) ;

uint16_t cvmx_ixf18201_read16(uint16_t reg_addr)
{
    cvmx_write64_uint16(IXF_ADDR_16, reg_addr);
    cvmx_write64_uint8(IXF_TRANS_TYPE, 1);
    cvmx_wait(800000);


    return(cvmx_read64_uint16(IXF_RD_DATA_16));
}
