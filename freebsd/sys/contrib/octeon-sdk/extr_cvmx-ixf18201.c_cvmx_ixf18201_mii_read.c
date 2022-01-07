
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int IXF_REG_MDI_CMD_ADDR1 ;
 int IXF_REG_MDI_RD_WR1 ;
 int cvmx_ixf18201_read32 (int ) ;
 int cvmx_ixf18201_write32 (int ,int) ;

int cvmx_ixf18201_mii_read(int mii_addr, int mmd, uint16_t reg)
{
    uint32_t cmd_val = 0;


    cmd_val = reg;
    cmd_val |= 0x0 << 26;
    cmd_val |= (mii_addr & 0x1f) << 21;
    cmd_val |= (mmd & 0x1f) << 16;
    cmd_val |= 1 << 30;
    cmd_val |= 1 << 31;




    cvmx_ixf18201_write32(IXF_REG_MDI_CMD_ADDR1, cmd_val);

    while (cvmx_ixf18201_read32(IXF_REG_MDI_CMD_ADDR1) & ( 1 << 30))
        ;


    cmd_val = 0;
    cmd_val |= 0x3 << 26;
    cmd_val |= (mii_addr & 0x1f) << 21;
    cmd_val |= (mmd & 0x1f) << 16;
    cmd_val |= 1 << 30;
    cmd_val |= 1 << 31;
    cvmx_ixf18201_write32(IXF_REG_MDI_CMD_ADDR1, cmd_val);

    while (cvmx_ixf18201_read32(IXF_REG_MDI_CMD_ADDR1) & ( 1 << 30))
        ;

    cmd_val = cvmx_ixf18201_read32(IXF_REG_MDI_RD_WR1);

    return(cmd_val >> 16);

}
