
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __cvmx_spi4000_configure_mac (int) ;
 int __cvmx_spi4000_configure_phy (int) ;
 int cvmx_spi4000_is_present (int) ;

int cvmx_spi4000_initialize(int interface)
{
    if (!cvmx_spi4000_is_present(interface))
        return -1;

    __cvmx_spi4000_configure_mac(interface);
    __cvmx_spi4000_configure_phy(interface);
    return 0;
}
