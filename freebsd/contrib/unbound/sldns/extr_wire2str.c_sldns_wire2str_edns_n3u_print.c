
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ sldns_str_print (char**,size_t*,char*,...) ;

int sldns_wire2str_edns_n3u_print(char** s, size_t* sl, uint8_t* data,
 size_t len)
{
 size_t i;
 int w = 0;
 for(i=0; i<len; i++) {
  if(data[i] == 1)
   w += sldns_str_print(s, sl, " SHA1");
  else w += sldns_str_print(s, sl, " %d", (int)data[i]);
 }
 return w;
}
