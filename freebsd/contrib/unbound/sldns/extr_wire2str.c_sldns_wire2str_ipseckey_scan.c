
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int sldns_wire2str_ipseckey_scan_internal (int **,size_t*,char**,size_t*,int *,size_t) ;

int sldns_wire2str_ipseckey_scan(uint8_t** d, size_t* dl, char** s, size_t* sl,
 uint8_t* pkt, size_t pktlen)
{
 uint8_t* od = *d;
 char* os = *s;
 size_t odl = *dl, osl = *sl;
 int w=sldns_wire2str_ipseckey_scan_internal(d, dl, s, sl, pkt, pktlen);
 if(w == -1) {
  *d = od;
  *s = os;
  *dl = odl;
  *sl = osl;
  return -1;
 }
 return w;
}
