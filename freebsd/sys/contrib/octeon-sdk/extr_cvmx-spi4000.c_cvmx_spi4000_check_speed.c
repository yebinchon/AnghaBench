
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int status; int speed; int duplex; } ;
struct TYPE_5__ {TYPE_1__ s; scalar_t__ u64; } ;
typedef TYPE_2__ cvmx_gmxx_rxx_rx_inbnd_t ;


 int __cvmx_spi4000_mdio_read (int,int,int) ;
 int __cvmx_spi4000_write (int,int,int) ;
 int * interface_is_spi4000 ;

cvmx_gmxx_rxx_rx_inbnd_t cvmx_spi4000_check_speed(int interface, int port)
{
    static int phy_status[10] = {0,};
    cvmx_gmxx_rxx_rx_inbnd_t link;
    int read_status;

    link.u64 = 0;

    if (!interface_is_spi4000[interface])
        return link;
    if (port>=10)
        return link;
    read_status = __cvmx_spi4000_mdio_read(interface, port, 0x11);
    if ((read_status & (1<<10)) == 0)
        read_status = 0;
    else
        read_status &= 0xe400;
    if (read_status != phy_status[port])
    {
        phy_status[port] = read_status;
        if (read_status & (1<<10))
        {

            if (read_status & (1<<15))
                __cvmx_spi4000_write(interface, (port<<7) | 0x0010, 0x3);
            else
                __cvmx_spi4000_write(interface, (port<<7) | 0x0010, 0x1);
        }
        else
        {

            __cvmx_spi4000_write(interface, (port<<7) | 0x0010, 0x3);
        }
    }

    if (read_status & (1<<10))
    {
        link.s.status = 1;
        if (read_status & (1<<15))
            link.s.speed = 2;
        else
            link.s.speed = 1;
    }
    else
    {
        link.s.speed = 2;
        link.s.status = 0;
    }
    link.s.duplex = ((read_status & (1<<13)) != 0);

    return link;
}
