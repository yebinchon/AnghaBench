
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int sldns_str_print (char**,size_t*,char*,...) ;

__attribute__((used)) static int
loc_cm_print(char** str, size_t* sl, uint8_t mantissa, uint8_t exponent)
{
 int w = 0;
 uint8_t i;

 if(exponent < 2) {
  if(exponent == 1)
   mantissa *= 10;
  return sldns_str_print(str, sl, "0.%02ld", (long)mantissa);
 }

 w += sldns_str_print(str, sl, "%d", (int)mantissa);
 for(i=0; i<exponent-2; i++)
  w += sldns_str_print(str, sl, "0");
 return w;
}
