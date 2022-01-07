
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CVMX_HELPER_DISABLE_SPI4000_BACKPRESSURE ;
 int __cvmx_spi4000_write (int,int,int) ;

__attribute__((used)) static void __cvmx_spi4000_configure_mac(int interface)
{
    int port;






    __cvmx_spi4000_write(interface, 0x0505, 0x3ff);
    __cvmx_spi4000_write(interface, 0x0620, 0x3ff);




    __cvmx_spi4000_write(interface, 0x059e, 0x3ff);



    __cvmx_spi4000_write(interface, 0x0505, 0x0);



    __cvmx_spi4000_write(interface, 0x0500, 0x0);






    for (port=0; port < 10; port++)
    {
        int port_offset = port << 7;






        __cvmx_spi4000_write(interface, port_offset | 0x0010, 0x3);


        __cvmx_spi4000_write(interface, port_offset | 0x000f, 0x3fff);
        __cvmx_spi4000_write(interface, port_offset | 0x0000, 0x0000);

        __cvmx_spi4000_write(interface, port_offset | 0x0001, 0x0000);
        if (CVMX_HELPER_DISABLE_SPI4000_BACKPRESSURE)
            __cvmx_spi4000_write(interface, port_offset | 0x0012, 0);
        else
            __cvmx_spi4000_write(interface, port_offset | 0x0012, 0x7);


        __cvmx_spi4000_write(interface, port_offset | 0x0015, 0x1);


        __cvmx_spi4000_write(interface, port_offset | 0x0018, 0x11cd);


        __cvmx_spi4000_write(interface, port_offset | 0x0019, 0x00);
    }


    __cvmx_spi4000_write(interface, 0x059f, 0x03ff);

    for (port=0; port < 10; port++)
    {

        __cvmx_spi4000_write(interface, port + 0x0600, 0x0900);
        __cvmx_spi4000_write(interface, port + 0x060a, 0x0800);
        __cvmx_spi4000_write(interface, port + 0x0614, 0x0380);
    }


    __cvmx_spi4000_write(interface, 0x059e, 0x0);


    __cvmx_spi4000_write(interface, 0x0620, 0x0);



    __cvmx_spi4000_write(interface, 0x0500, 0x03ff);



}
