
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int link_up; int full_duplex; int speed; } ;
struct TYPE_5__ {scalar_t__ u64; TYPE_1__ s; } ;
typedef TYPE_2__ cvmx_helper_link_info_t ;


 int cvmx_mdio_read (int,int,int) ;

__attribute__((used)) static cvmx_helper_link_info_t __get_marvell_phy_link_state(int phy_addr)
{
    cvmx_helper_link_info_t result;
    int phy_status;

    result.u64 = 0;

    phy_status = cvmx_mdio_read(phy_addr >> 8, phy_addr & 0xff, 17);




    if ((phy_status & (1<<11)) == 0)
    {
        int auto_status = cvmx_mdio_read(phy_addr >> 8, phy_addr & 0xff, 0);
        if ((auto_status & (1<<12)) == 0)
            phy_status |= 1<<11;
    }



    if (phy_status & (1<<11))
    {
        result.s.link_up = 1;
        result.s.full_duplex = ((phy_status>>13)&1);
        switch ((phy_status>>14)&3)
        {
            case 0:
                result.s.speed = 10;
                break;
            case 1:
                result.s.speed = 100;
                break;
            case 2:
                result.s.speed = 1000;
                break;
            case 3:
                result.u64 = 0;
                break;
        }
    }
    return result;
}
