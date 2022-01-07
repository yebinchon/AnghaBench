
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int bus_size_t ;


 int NDIS_BUS_SPACE_IO ;
 int bus_space_write_1 (int ,int,int ,int ) ;

__attribute__((used)) static void
WRITE_PORT_UCHAR(uint8_t *port, uint8_t val)
{
 bus_space_write_1(NDIS_BUS_SPACE_IO, 0x0, (bus_size_t)port, val);
}
