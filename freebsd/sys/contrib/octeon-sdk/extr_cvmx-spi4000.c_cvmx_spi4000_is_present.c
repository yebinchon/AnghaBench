
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OCTEON_CN38XX ;
 int OCTEON_CN58XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int SPI4000_TWSI_ID (int) ;
 int SPI4000_WRITE_ADDRESS_HIGH ;
 int SPI4000_WRITE_ADDRESS_LOW ;
 scalar_t__ cvmx_twsi_write8 (int ,int ,int ) ;
 int* interface_is_spi4000 ;

int cvmx_spi4000_is_present(int interface)
{
    if (!(OCTEON_IS_MODEL(OCTEON_CN38XX) || OCTEON_IS_MODEL(OCTEON_CN58XX)))
        return 0;


    if (cvmx_twsi_write8(SPI4000_TWSI_ID(interface), SPI4000_WRITE_ADDRESS_HIGH, 0))
        return 0;
    if (cvmx_twsi_write8(SPI4000_TWSI_ID(interface), SPI4000_WRITE_ADDRESS_LOW, 0))
        return 0;
    interface_is_spi4000[interface] = 1;
    return 1;
}
