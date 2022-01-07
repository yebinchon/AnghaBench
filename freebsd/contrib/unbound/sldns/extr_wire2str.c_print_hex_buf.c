
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int sldns_str_print (char**,size_t*,char*,char const,char const) ;

__attribute__((used)) static int print_hex_buf(char** s, size_t* slen, uint8_t* buf, size_t len)
{
 const char* hex = "0123456789ABCDEF";
 size_t i;
 for(i=0; i<len; i++) {
  (void)sldns_str_print(s, slen, "%c%c", hex[(buf[i]&0xf0)>>4],
   hex[buf[i]&0x0f]);
 }
 return (int)len*2;
}
