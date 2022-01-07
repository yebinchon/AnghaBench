
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OCTEON_CN30XX ;
 int OCTEON_CN31XX ;
 int OCTEON_CN50XX ;
 int OCTEON_CN52XX ;
 int OCTEON_CN56XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int __cvmx_helper_board_usb_get_num_ports (int) ;

int cvmx_usb_get_num_ports(void)
{
    int arch_ports = 0;

    if (OCTEON_IS_MODEL(OCTEON_CN56XX))
        arch_ports = 1;
    else if (OCTEON_IS_MODEL(OCTEON_CN52XX))
        arch_ports = 2;
    else if (OCTEON_IS_MODEL(OCTEON_CN50XX))
        arch_ports = 1;
    else if (OCTEON_IS_MODEL(OCTEON_CN31XX))
        arch_ports = 1;
    else if (OCTEON_IS_MODEL(OCTEON_CN30XX))
        arch_ports = 1;
    else
        arch_ports = 0;

    return __cvmx_helper_board_usb_get_num_ports(arch_ports);
}
