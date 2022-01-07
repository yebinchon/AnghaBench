
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int phy_addr; } ;
typedef TYPE_1__ cvmx_phy_info_t ;


 TYPE_1__ __get_phy_info_from_dt (int) ;

int cvmx_helper_board_get_mii_address_from_dt(int ipd_port)
{
        cvmx_phy_info_t phy_info = __get_phy_info_from_dt(ipd_port);
        return phy_info.phy_addr;
}
