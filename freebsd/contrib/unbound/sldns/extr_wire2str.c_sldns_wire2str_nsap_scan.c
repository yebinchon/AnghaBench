
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int print_remainder_hex (char*,int **,size_t*,char**,size_t*) ;

int sldns_wire2str_nsap_scan(uint8_t** d, size_t* dl, char** s, size_t* sl)
{
 return print_remainder_hex("0x", d, dl, s, sl);
}
