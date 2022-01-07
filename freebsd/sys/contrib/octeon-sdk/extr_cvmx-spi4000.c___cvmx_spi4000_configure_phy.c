
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __cvmx_spi4000_mdio_write (int,int,int,int) ;
 int cvmx_spi4000_check_speed (int,int) ;

__attribute__((used)) static void __cvmx_spi4000_configure_phy(int interface)
{
    int port;
    for (port=0; port < 10; port++)
        cvmx_spi4000_check_speed(interface, port);

    for (port=0; port < 10; port++)
        __cvmx_spi4000_mdio_write(interface, port, 0x14, 0x00e2);

    for (port=0; port < 10; port++)
        __cvmx_spi4000_mdio_write(interface, port, 0x4, 0x0d01);

    for (port=0; port < 10; port++)
        __cvmx_spi4000_mdio_write(interface, port, 0x0, 0x9140);
}
