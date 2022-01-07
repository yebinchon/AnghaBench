
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;


 int print_remainder_hex (char*,int **,size_t*,char**,size_t*) ;
 scalar_t__ sldns_read_uint32 (int *) ;
 int sldns_str_print (char**,size_t*,char*,unsigned int) ;

int sldns_wire2str_ttl_scan(uint8_t** d, size_t* dlen, char** s, size_t* slen)
{
 uint32_t ttl;
 if(*dlen == 0) return 0;
 if(*dlen < 4) return print_remainder_hex("Error malformed 0x", d, dlen, s, slen);
 ttl = sldns_read_uint32(*d);
 (*d)+=4;
 (*dlen)-=4;
 return sldns_str_print(s, slen, "%u", (unsigned)ttl);
}
