
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int sldns_str_print (char**,size_t*,char*,int ,int ,int ,int ,int ,int ) ;

int sldns_wire2str_eui48_scan(uint8_t** d, size_t* dl, char** s, size_t* sl)
{
 int w;
 if(*dl < 6)
  return -1;
 w = sldns_str_print(s, sl, "%.2x-%.2x-%.2x-%.2x-%.2x-%.2x",
  (*d)[0], (*d)[1], (*d)[2], (*d)[3], (*d)[4], (*d)[5]);
 (*d)+=6;
 (*dl)-=6;
 return w;
}
