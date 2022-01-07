
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int wps_pin_checksum (unsigned int) ;

unsigned int wps_pin_valid(unsigned int pin)
{
 return wps_pin_checksum(pin / 10) == (pin % 10);
}
