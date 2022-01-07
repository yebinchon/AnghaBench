
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;


 scalar_t__ random_get_bytes (unsigned char*,int) ;
 unsigned int wps_pin_checksum (unsigned int) ;

int wps_generate_pin(unsigned int *pin)
{
 unsigned int val;


 if (random_get_bytes((unsigned char *) &val, sizeof(val)) < 0)
  return -1;
 val %= 10000000;


 *pin = val * 10 + wps_pin_checksum(val);
 return 0;
}
