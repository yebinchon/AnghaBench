
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ldns_buffer ;


 int ldns_buffer_printf (int *,char*,...) ;

__attribute__((used)) static void
loc_cm_print(ldns_buffer *output, uint8_t mantissa, uint8_t exponent)
{
 uint8_t i;

 if(exponent < 2) {
  if(exponent == 1)
   mantissa *= 10;
  ldns_buffer_printf(output, "0.%02ld", (long)mantissa);
  return;
 }

 ldns_buffer_printf(output, "%d", (int)mantissa);
 for(i=0; i<exponent-2; i++)
  ldns_buffer_printf(output, "0");
}
