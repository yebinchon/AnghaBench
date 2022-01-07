
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int SPI4000_DO_WRITE ;
 int SPI4000_GET_WRITE_STATUS ;
 int SPI4000_TWSI_ID (int) ;
 int SPI4000_WRITE_ADDRESS_HIGH ;
 int SPI4000_WRITE_DATA0 ;
 int cvmx_dprintf (char*,int) ;
 int cvmx_twsi_read8 (int ,int ) ;
 int cvmx_twsix_write_ia (int ,int ,int ,int,int,int) ;

__attribute__((used)) static void __cvmx_spi4000_write(int interface, int address, uint32_t data)
{
    int status;
    cvmx_twsix_write_ia(0, SPI4000_TWSI_ID(interface), SPI4000_WRITE_ADDRESS_HIGH, 2, 1, address);
    cvmx_twsix_write_ia(0, SPI4000_TWSI_ID(interface), SPI4000_WRITE_DATA0, 4, 1, data);

    status = cvmx_twsi_read8(SPI4000_TWSI_ID(interface), SPI4000_DO_WRITE);
    while ((status == 5) || (status == 0xff))
        status = cvmx_twsi_read8(SPI4000_TWSI_ID(interface), SPI4000_GET_WRITE_STATUS);

    if (status != 4)
        cvmx_dprintf("SPI4000: write failed with status=0x%x\n", status);
}
