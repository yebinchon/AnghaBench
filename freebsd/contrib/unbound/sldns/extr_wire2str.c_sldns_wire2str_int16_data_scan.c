
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;


 scalar_t__ sldns_read_uint16 (int *) ;
 int sldns_str_print (char**,size_t*,char*,...) ;
 scalar_t__ sldns_wire2str_b64_scan_num (int **,size_t*,char**,size_t*,scalar_t__) ;

int sldns_wire2str_int16_data_scan(uint8_t** d, size_t* dl, char** s, size_t* sl)
{
 int w;
 uint16_t n;
 if(*dl < 2)
  return -1;
 n = sldns_read_uint16(*d);
 if(*dl < 2+(size_t)n)
  return -1;
 (*d)+=2;
 (*dl)-=2;
 if(n == 0) {
  return sldns_str_print(s, sl, "0");
 }
 w = sldns_str_print(s, sl, "%u ", (unsigned)n);
 w += sldns_wire2str_b64_scan_num(d, dl, s, sl, n);
 return w;
}
