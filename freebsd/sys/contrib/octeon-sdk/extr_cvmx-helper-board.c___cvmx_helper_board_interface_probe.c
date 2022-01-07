
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mode; } ;
struct TYPE_5__ {void* u64; TYPE_1__ cn56xx; } ;
typedef TYPE_2__ cvmx_pcsx_miscx_ctl_reg_t ;
struct TYPE_6__ {int board_type; } ;
 scalar_t__ CVMX_HELPER_INTERFACE_MODE_PICMG ;
 scalar_t__ CVMX_HELPER_INTERFACE_MODE_SGMII ;
 scalar_t__ CVMX_HELPER_INTERFACE_MODE_SPI ;
 int CVMX_PCSX_MISCX_CTL_REG (int,int) ;
 scalar_t__ cvmx_helper_interface_get_mode (int) ;
 void* cvmx_read_csr (int ) ;
 TYPE_3__* cvmx_sysinfo_get () ;
 int cvmx_write_csr (int ,void*) ;
 scalar_t__ getenv (char*) ;

int __cvmx_helper_board_interface_probe(int interface, int supported_ports)
{
    switch (cvmx_sysinfo_get()->board_type)
    {
        case 140:
        case 132:
        case 130:
        case 131:
            if (interface == 0)
                return 2;
     break;
        case 141:
            if (interface == 0)
                return 2;
     break;
        case 128:
            if (interface == 0)
                return 0;
     break;


        case 135:
            if (interface == 1)
                return 0;
     break;
        case 136:




     break;
        case 134:

     if (interface == 3)
  return 0;
     break;
        case 133:
            return 1;

        case 129:
            if (interface == 0)
                return 2;
    }




    return supported_ports;
}
