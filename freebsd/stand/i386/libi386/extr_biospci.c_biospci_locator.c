
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int int8_t ;



uint32_t
biospci_locator(int8_t bus, uint8_t device, uint8_t function)
{

 return ((bus << 8) | ((device & 0x1f) << 3) | (function & 0x7));
}
