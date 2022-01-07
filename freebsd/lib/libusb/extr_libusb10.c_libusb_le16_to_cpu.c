
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int le16toh (int ) ;

uint16_t
libusb_le16_to_cpu(uint16_t x)
{
 return (le16toh(x));
}
