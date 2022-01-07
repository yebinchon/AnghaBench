
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int link; int dup; int speed; } ;
struct TYPE_17__ {TYPE_1__ s; void* u64; } ;
typedef TYPE_3__ cvmx_pcsx_sgmx_lp_adv_reg_t ;
struct TYPE_18__ {void* u64; } ;
typedef TYPE_4__ cvmx_pcsx_mrx_status_reg_t ;
struct TYPE_19__ {void* u64; } ;
typedef TYPE_5__ cvmx_pcsx_miscx_ctl_reg_t ;
struct TYPE_20__ {void* u64; } ;
typedef TYPE_6__ cvmx_pcsx_anx_adv_reg_t ;
struct TYPE_16__ {int link_up; int full_duplex; int speed; } ;
struct TYPE_21__ {scalar_t__ u64; TYPE_2__ s; } ;
typedef TYPE_7__ cvmx_helper_link_info_t ;
struct TYPE_22__ {int board_type; scalar_t__ fdt_addr; } ;
 int CVMX_HELPER_BOARD_MGMT_IPD_PORT ;
 int CVMX_PCSX_ANX_ADV_REG (int,int) ;
 int CVMX_PCSX_MISCX_CTL_REG (int,int) ;
 int CVMX_PCSX_MRX_STATUS_REG (int,int) ;
 int CVMX_PCSX_SGMX_LP_ADV_REG (int,int) ;
 int OCTEON_CN3XXX ;
 int OCTEON_CN50XX ;
 int OCTEON_CN56XX ;
 int OCTEON_CN58XX ;
 int OCTEON_CN63XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 TYPE_7__ __cvmx_helper_board_link_get_from_dt (int) ;
 TYPE_7__ __get_broadcom_phy_link_state (int) ;
 TYPE_7__ __get_inband_link_state (int) ;
 TYPE_7__ __get_marvell_phy_link_state (int) ;
 int cvmx_helper_board_get_mii_address (int) ;
 int cvmx_helper_get_interface_index_num (int) ;
 int cvmx_helper_get_interface_num (int) ;
 TYPE_7__ cvmx_override_board_link_get (int) ;
 void* cvmx_read_csr (int ) ;
 TYPE_8__* cvmx_sysinfo_get () ;

cvmx_helper_link_info_t __cvmx_helper_board_link_get(int ipd_port)
{
    cvmx_helper_link_info_t result;
    int phy_addr;
    int is_broadcom_phy = 0;


    if (cvmx_sysinfo_get()->fdt_addr)
    {
        return __cvmx_helper_board_link_get_from_dt(ipd_port);
    }



    if (cvmx_override_board_link_get)
        return cvmx_override_board_link_get(ipd_port);


    result.u64 = 0;




    switch (cvmx_sysinfo_get()->board_type)
    {
        case 128:

            result.s.link_up = 1;
            result.s.full_duplex = 1;
            result.s.speed = 1000;
            return result;
        case 133:
        case 131:
        case 132:
            break;
        case 142:
        case 152:
        case 153:

        case 151:


            if (ipd_port == 1)
            {
                result.s.link_up = 1;
                result.s.full_duplex = 1;
                result.s.speed = 1000;
                return result;
            }

            break;
        case 135:
        case 139:
        case 138:
        case 137:

            if (ipd_port == CVMX_HELPER_BOARD_MGMT_IPD_PORT)
                is_broadcom_phy = 1;
            break;
        case 141:
        case 140:
        case 136:

            if ((ipd_port >= CVMX_HELPER_BOARD_MGMT_IPD_PORT) && (ipd_port < (CVMX_HELPER_BOARD_MGMT_IPD_PORT + 2)))
                is_broadcom_phy = 1;
            break;
        case 145:
        case 144:
        case 143:
            if ((ipd_port >= CVMX_HELPER_BOARD_MGMT_IPD_PORT) && (ipd_port < (CVMX_HELPER_BOARD_MGMT_IPD_PORT + 2))
                && cvmx_helper_board_get_mii_address(ipd_port) >= 0 && cvmx_helper_board_get_mii_address(ipd_port) <= 1)
                is_broadcom_phy = 1;
            break;
        case 134:
            is_broadcom_phy = 1;
            break;
        case 147:

            if (ipd_port == 1)
            {
                result.s.link_up = 1;
                result.s.full_duplex = 1;
                result.s.speed = 1000;
                return result;
            }
            else
                is_broadcom_phy = 1;
            break;
        case 154:

            if (ipd_port == 2)
            {

                result.u64 = 0;
                return result;
            }
            else
            {

                result.s.link_up = 1;
                result.s.full_duplex = 1;
                result.s.speed = 1000;
                return result;
            }
        case 129:
        case 130:
            is_broadcom_phy = 1;
            break;
    }


    phy_addr = cvmx_helper_board_get_mii_address(ipd_port);


    if (phy_addr != -1)
    {
        if (is_broadcom_phy)
        {
            result = __get_broadcom_phy_link_state(phy_addr);
        }
        else
        {

            result = __get_marvell_phy_link_state(phy_addr);
        }
    }
    else if (OCTEON_IS_MODEL(OCTEON_CN3XXX) || OCTEON_IS_MODEL(OCTEON_CN58XX)
             || OCTEON_IS_MODEL(OCTEON_CN50XX))
    {



        result = __get_inband_link_state(ipd_port);
    }
    else
    {



        result.u64 = 0;
    }


    if (!result.s.link_up)
        result.u64 = 0;

    return result;
}
