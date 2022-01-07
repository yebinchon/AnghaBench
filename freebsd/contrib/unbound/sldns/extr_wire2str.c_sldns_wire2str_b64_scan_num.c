
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int sldns_b64_ntop (int *,size_t,char*,size_t) ;
 int sldns_b64_ntop_calculate_size (size_t) ;

__attribute__((used)) static int sldns_wire2str_b64_scan_num(uint8_t** d, size_t* dl, char** s,
 size_t* sl, size_t num)
{

 size_t sz = sldns_b64_ntop_calculate_size(num)-1;
 if(*sl < sz+1) {
  (*d) += num;
  (*dl) -= num;
  return (int)sz;

 }
 sldns_b64_ntop(*d, num, *s, *sl);
 (*d) += num;
 (*dl) -= num;
 (*s) += sz;
 (*sl) -= sz;
 return (int)sz;
}
