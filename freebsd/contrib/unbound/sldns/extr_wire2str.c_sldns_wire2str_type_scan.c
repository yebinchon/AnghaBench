
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int print_remainder_hex (char*,int **,size_t*,char**,size_t*) ;
 int sldns_read_uint16 (int *) ;
 int sldns_wire2str_type_print (char**,size_t*,int ) ;

int sldns_wire2str_type_scan(uint8_t** d, size_t* dlen, char** s, size_t* slen)
{
 uint16_t t;
 if(*dlen == 0) return 0;
 if(*dlen < 2) return print_remainder_hex("Error malformed 0x", d, dlen, s, slen);
 t = sldns_read_uint16(*d);
 (*d)+=2;
 (*dlen)-=2;
 return sldns_wire2str_type_print(s, slen, t);
}
