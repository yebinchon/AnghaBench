
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int htole16 (int ) ;

uint16_t
libusb_cpu_to_le16(uint16_t x)
{
 return (htole16(x));
}
