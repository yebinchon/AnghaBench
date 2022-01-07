
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
typedef int socklen_t ;
typedef int ip6 ;
typedef int ip4 ;
typedef int buf ;


 int AF_INET ;
 int AF_INET6 ;
 int inet_ntop (int ,scalar_t__*,char*,int ) ;
 int memmove (scalar_t__*,scalar_t__*,size_t) ;
 int memset (scalar_t__*,int ,int) ;
 scalar_t__ print_hex_buf (char**,size_t*,scalar_t__*,size_t) ;
 int sldns_read_uint16 (scalar_t__*) ;
 scalar_t__ sldns_str_print (char**,size_t*,char*,...) ;

int sldns_wire2str_edns_subnet_print(char** s, size_t* sl, uint8_t* data,
 size_t len)
{
 int w = 0;
 uint16_t family;
 uint8_t source, scope;
 if(len < 4) {
  w += sldns_str_print(s, sl, "malformed subnet ");
  w += print_hex_buf(s, sl, data, len);
  return w;
 }
 family = sldns_read_uint16(data);
 source = data[2];
 scope = data[3];
 if(family == 1) {

  char buf[64];
  uint8_t ip4[4];
  memset(ip4, 0, sizeof(ip4));
  if(len-4 > 4) {
   w += sldns_str_print(s, sl, "trailingdata:");
   w += print_hex_buf(s, sl, data+4+4, len-4-4);
   w += sldns_str_print(s, sl, " ");
   len = 4+4;
  }
  memmove(ip4, data+4, len-4);
  if(!inet_ntop(AF_INET, ip4, buf, (socklen_t)sizeof(buf))) {
   w += sldns_str_print(s, sl, "ip4ntoperror ");
   w += print_hex_buf(s, sl, data+4+4, len-4-4);
  } else {
   w += sldns_str_print(s, sl, "%s", buf);
  }
 } else if(family == 2) {

  char buf[64];
  uint8_t ip6[16];
  memset(ip6, 0, sizeof(ip6));
  if(len-4 > 16) {
   w += sldns_str_print(s, sl, "trailingdata:");
   w += print_hex_buf(s, sl, data+4+16, len-4-16);
   w += sldns_str_print(s, sl, " ");
   len = 4+16;
  }
  memmove(ip6, data+4, len-4);
  w += print_hex_buf(s, sl, data+4+4, len-4-4);

 } else {

  w += sldns_str_print(s, sl, "family %d ",
   (int)family);
  w += print_hex_buf(s, sl, data, len);
 }
 w += sldns_str_print(s, sl, "/%d scope /%d", (int)source, (int)scope);
 return w;
}
