
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;


 scalar_t__ print_hex_buf (char**,size_t*,int *,size_t) ;
 scalar_t__ sldns_read_uint16 (int *) ;
 scalar_t__ sldns_str_print (char**,size_t*,char*) ;
 scalar_t__ sldns_wire2str_edns_option_code_print (char**,size_t*,scalar_t__) ;
 scalar_t__ sldns_wire2str_edns_option_print (char**,size_t*,scalar_t__,int *,scalar_t__) ;

__attribute__((used)) static int
print_edns_opts(char** s, size_t* sl, uint8_t* rdata, size_t rdatalen)
{
 uint16_t option_code, option_len;
 int w = 0;
 while(rdatalen > 0) {

  if(rdatalen < 4) {
   w += sldns_str_print(s, sl, " ; malformed: ");
   w += print_hex_buf(s, sl, rdata, rdatalen);
   return w;
  }
  option_code = sldns_read_uint16(rdata);
  option_len = sldns_read_uint16(rdata+2);
  rdata += 4;
  rdatalen -= 4;


  if(rdatalen < (size_t)option_len) {
   w += sldns_str_print(s, sl, " ; malformed ");
   w += sldns_wire2str_edns_option_code_print(s, sl,
    option_code);
   w += sldns_str_print(s, sl, ": ");
   w += print_hex_buf(s, sl, rdata, rdatalen);
   return w;
  }
  w += sldns_str_print(s, sl, " ; ");
  w += sldns_wire2str_edns_option_print(s, sl, option_code,
   rdata, option_len);
  rdata += option_len;
  rdatalen -= option_len;
 }
 return w;
}
