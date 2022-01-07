
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int sldns_read_uint16 (int *) ;
 int sldns_str_print (char**,size_t*,char*,int ,int ,int ,int ) ;

int sldns_wire2str_ilnp64_scan(uint8_t** d, size_t* dl, char** s, size_t* sl)
{
 int w;
 if(*dl < 8)
  return -1;
 w = sldns_str_print(s, sl, "%.4x:%.4x:%.4x:%.4x",
  sldns_read_uint16(*d), sldns_read_uint16((*d)+2),
  sldns_read_uint16((*d)+4), sldns_read_uint16((*d)+6));
 (*d)+=8;
 (*dl)-=8;
 return w;
}
