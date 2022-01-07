
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ print_hex_buf (char**,size_t*,int *,size_t) ;
 scalar_t__ sldns_str_print (char**,size_t*,char*,...) ;

int sldns_wire2str_rdata_unknown_scan(uint8_t** d, size_t* dlen, char** s,
 size_t* slen)
{
 int w = 0;


 w += sldns_str_print(s, slen, "\\# %u", (unsigned)*dlen);


 if(*dlen != 0)
  w += sldns_str_print(s, slen, " ");
 w += print_hex_buf(s, slen, *d, *dlen);
 (*d) += *dlen;
 (*dlen) = 0;
 return w;
}
