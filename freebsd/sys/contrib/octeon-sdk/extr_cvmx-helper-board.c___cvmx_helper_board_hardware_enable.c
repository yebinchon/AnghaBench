
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ board_type; } ;


 int CVMX_ASXX_RX_CLK_SETX (int,int) ;
 int CVMX_ASXX_TX_CLK_SETX (int,int) ;
 scalar_t__ CVMX_BOARD_TYPE_CN3005_EVB_HS5 ;
 scalar_t__ CVMX_BOARD_TYPE_CN3010_EVB_HS5 ;
 scalar_t__ CVMX_BOARD_TYPE_CUST_UBIQUITI_E100 ;
 scalar_t__ CVMX_BOARD_TYPE_CUST_UBIQUITI_E120 ;
 scalar_t__ CVMX_BOARD_TYPE_LANAI2_U ;
 int cvmx_dprintf (char*) ;
 int cvmx_helper_board_get_mii_address (int ) ;
 int cvmx_mdio_read (int,int,int) ;
 TYPE_1__* cvmx_sysinfo_get () ;
 int cvmx_wait (int) ;
 int cvmx_write_csr (int ,int) ;

int __cvmx_helper_board_hardware_enable(int interface)
{
    if (cvmx_sysinfo_get()->board_type == CVMX_BOARD_TYPE_CN3005_EVB_HS5)
    {
        if (interface == 0)
        {

            cvmx_write_csr(CVMX_ASXX_TX_CLK_SETX(1, interface), 0);
            cvmx_write_csr(CVMX_ASXX_RX_CLK_SETX(1, interface), 0);


            cvmx_write_csr(CVMX_ASXX_TX_CLK_SETX(0, interface), 0xc);
            cvmx_write_csr(CVMX_ASXX_RX_CLK_SETX(0, interface), 0xc);
        }
    }
    else if (cvmx_sysinfo_get()->board_type == CVMX_BOARD_TYPE_LANAI2_U)
    {
        if (interface == 0)
        {
            cvmx_write_csr(CVMX_ASXX_TX_CLK_SETX(0, interface), 16);
            cvmx_write_csr(CVMX_ASXX_RX_CLK_SETX(0, interface), 16);
        }
    }
    else if (cvmx_sysinfo_get()->board_type == CVMX_BOARD_TYPE_CN3010_EVB_HS5)
    {



        if (interface == 0)
        {




            int phy_addr = cvmx_helper_board_get_mii_address(0);
            if (phy_addr != -1)
            {
                int phy_identifier = cvmx_mdio_read(phy_addr >> 8, phy_addr & 0xff, 0x2);

                if (phy_identifier == 0x0143)
                {
                    cvmx_dprintf("\n");
                    cvmx_dprintf("ERROR:\n");
                    cvmx_dprintf("ERROR: Board type is CVMX_BOARD_TYPE_CN3010_EVB_HS5, but Broadcom PHY found.\n");
                    cvmx_dprintf("ERROR: The board type is mis-configured, and software malfunctions are likely.\n");
                    cvmx_dprintf("ERROR: All boards require a unique board type to identify them.\n");
                    cvmx_dprintf("ERROR:\n");
                    cvmx_dprintf("\n");
                    cvmx_wait(1000000000);
                    cvmx_write_csr(CVMX_ASXX_RX_CLK_SETX(0, interface), 5);
                    cvmx_write_csr(CVMX_ASXX_TX_CLK_SETX(0, interface), 5);
                }
            }
        }
    }
    return 0;
}
