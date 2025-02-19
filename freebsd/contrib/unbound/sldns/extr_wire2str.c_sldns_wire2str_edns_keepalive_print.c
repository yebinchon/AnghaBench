
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;


 scalar_t__ print_hex_buf (char**,size_t*,int *,size_t) ;
 scalar_t__ sldns_read_uint16 (int *) ;
 scalar_t__ sldns_str_print (char**,size_t*,char*,...) ;

__attribute__((used)) static int sldns_wire2str_edns_keepalive_print(char** s, size_t* sl,
 uint8_t* data, size_t len)
{
 int w = 0;
 uint16_t timeout;
 if(!(len == 0 || len == 2)) {
  w += sldns_str_print(s, sl, "malformed keepalive ");
  w += print_hex_buf(s, sl, data, len);
  return w;
 }
 if(len == 0 ) {
  w += sldns_str_print(s, sl, "no timeout value (only valid for client option) ");
 } else {
  timeout = sldns_read_uint16(data);
  w += sldns_str_print(s, sl, "timeout value in units of 100ms %u", (int)timeout);
 }
 return w;
}
