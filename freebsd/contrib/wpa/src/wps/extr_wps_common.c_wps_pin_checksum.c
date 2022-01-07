
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned int wps_pin_checksum(unsigned int pin)
{
 unsigned int accum = 0;
 while (pin) {
  accum += 3 * (pin % 10);
  pin /= 10;
  accum += pin % 10;
  pin /= 10;
 }

 return (10 - accum % 10) % 10;
}
