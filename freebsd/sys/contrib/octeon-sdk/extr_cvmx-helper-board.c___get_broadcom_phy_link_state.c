
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int link_up; int full_duplex; int speed; } ;
struct TYPE_5__ {TYPE_1__ s; scalar_t__ u64; } ;
typedef TYPE_2__ cvmx_helper_link_info_t ;


 int cvmx_mdio_read (int,int,int) ;

__attribute__((used)) static cvmx_helper_link_info_t __get_broadcom_phy_link_state(int phy_addr)
{
    cvmx_helper_link_info_t result;
    int phy_status;

    result.u64 = 0;


    phy_status = cvmx_mdio_read(phy_addr >> 8, phy_addr & 0xff, 0x19);
    switch ((phy_status>>8) & 0x7)
    {
        case 0:
            result.u64 = 0;
            break;
        case 1:
            result.s.link_up = 1;
            result.s.full_duplex = 0;
            result.s.speed = 10;
            break;
        case 2:
            result.s.link_up = 1;
            result.s.full_duplex = 1;
            result.s.speed = 10;
            break;
        case 3:
            result.s.link_up = 1;
            result.s.full_duplex = 0;
            result.s.speed = 100;
            break;
        case 4:
            result.s.link_up = 1;
            result.s.full_duplex = 1;
            result.s.speed = 100;
            break;
        case 5:
            result.s.link_up = 1;
            result.s.full_duplex = 1;
            result.s.speed = 100;
            break;
        case 6:
            result.s.link_up = 1;
            result.s.full_duplex = 0;
            result.s.speed = 1000;
            break;
        case 7:
            result.s.link_up = 1;
            result.s.full_duplex = 1;
            result.s.speed = 1000;
            break;
    }
    return result;
}
