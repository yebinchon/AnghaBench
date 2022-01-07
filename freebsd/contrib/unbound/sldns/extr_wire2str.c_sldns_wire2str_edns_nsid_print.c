
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;


 scalar_t__ isprint (unsigned char) ;
 scalar_t__ print_hex_buf (char**,size_t*,char*,size_t) ;
 scalar_t__ sldns_str_print (char**,size_t*,char*,...) ;

int sldns_wire2str_edns_nsid_print(char** s, size_t* sl, uint8_t* data,
 size_t len)
{
 int w = 0;
 size_t i, printed=0;
 w += print_hex_buf(s, sl, data, len);
 for(i=0; i<len; i++) {
  if(isprint((unsigned char)data[i]) || data[i] == '\t') {
   if(!printed) {
    w += sldns_str_print(s, sl, " (");
    printed = 1;
   }
   w += sldns_str_print(s, sl, "%c", (char)data[i]);
  }
 }
 if(printed)
  w += sldns_str_print(s, sl, ")");
 return w;
}
