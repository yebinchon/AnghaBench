
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ sldns_str_print (char**,size_t*,char*) ;
 scalar_t__ str_char_print (char**,size_t*,int ) ;

int sldns_wire2str_long_str_scan(uint8_t** d, size_t* dl, char** s, size_t* sl)
{
 size_t i;
 int w = 0;
 w += sldns_str_print(s, sl, "\"");
 for(i=0; i<*dl; i++)
  w += str_char_print(s, sl, (*d)[i]);
 w += sldns_str_print(s, sl, "\"");
 (*d)+=*dl;
 (*dl)=0;
 return w;
}
