
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int sldns_str_print (char**,size_t*,char*,unsigned int) ;

int sldns_wire2str_int8_scan(uint8_t** d, size_t* dl, char** s, size_t* sl)
{
 int w;
 if(*dl < 1) return -1;
 w = sldns_str_print(s, sl, "%u", (unsigned)**d);
 (*d)++;
 (*dl)--;
 return w;
}
