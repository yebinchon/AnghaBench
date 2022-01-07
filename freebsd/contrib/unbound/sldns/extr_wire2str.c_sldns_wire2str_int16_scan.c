
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ sldns_read_uint16 (int *) ;
 int sldns_str_print (char**,size_t*,char*,unsigned long) ;

int sldns_wire2str_int16_scan(uint8_t** d, size_t* dl, char** s, size_t* sl)
{
 int w;
 if(*dl < 2) return -1;
 w = sldns_str_print(s, sl, "%lu", (unsigned long)sldns_read_uint16(*d));
 (*d)+=2;
 (*dl)-=2;
 return w;
}
