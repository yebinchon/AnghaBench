
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int board_type; } ;




 TYPE_1__* cvmx_sysinfo_get () ;

int __cvmx_helper_board_usb_get_num_ports(int supported_ports)
{
    switch (cvmx_sysinfo_get()->board_type)
    {
        case 128:
        case 129:
            return 0;
    }

    return supported_ports;
}
