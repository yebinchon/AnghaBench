
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;


 scalar_t__ print_hex_buf (char**,size_t*,int *,size_t) ;
 scalar_t__ sldns_read_uint32 (int *) ;
 scalar_t__ sldns_str_print (char**,size_t*,char*,...) ;

int sldns_wire2str_edns_ul_print(char** s, size_t* sl, uint8_t* data,
 size_t len)
{
 uint32_t lease;
 int w = 0;
 if(len != 4) {
  w += sldns_str_print(s, sl, "malformed UL ");
  w += print_hex_buf(s, sl, data, len);
  return w;
 }
 lease = sldns_read_uint32(data);
 w += sldns_str_print(s, sl, "lease %lu", (unsigned long)lease);
 return w;
}
