
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int print_remainder_hex (char*,int **,size_t*,char**,size_t*) ;
 int sldns_str_print (char**,size_t*,char*) ;

int sldns_wire2str_hex_scan(uint8_t** d, size_t* dl, char** s, size_t* sl)
{
 if(*dl == 0) {
  return sldns_str_print(s, sl, "0");
 }
 return print_remainder_hex("", d, dl, s, sl);
}
