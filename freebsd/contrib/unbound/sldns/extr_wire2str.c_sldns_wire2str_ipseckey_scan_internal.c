
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ sldns_str_print (char**,size_t*,char*,...) ;
 int sldns_wire2str_a_scan (int**,size_t*,char**,size_t*) ;
 int sldns_wire2str_aaaa_scan (int**,size_t*,char**,size_t*) ;
 scalar_t__ sldns_wire2str_b64_scan_num (int**,size_t*,char**,size_t*,size_t) ;
 int sldns_wire2str_dname_scan (int**,size_t*,char**,size_t*,int*,size_t) ;

__attribute__((used)) static int sldns_wire2str_ipseckey_scan_internal(uint8_t** d, size_t* dl,
 char** s, size_t* sl, uint8_t* pkt, size_t pktlen)
{

 uint8_t precedence, gateway_type, algorithm;
 int w = 0;

 if(*dl < 3) return -1;
 precedence = (*d)[0];
 gateway_type = (*d)[1];
 algorithm = (*d)[2];
 if(gateway_type > 3)
  return -1;
 (*d)+=3;
 (*dl)-=3;
 w += sldns_str_print(s, sl, "%d %d %d ",
  (int)precedence, (int)gateway_type, (int)algorithm);

 switch(gateway_type) {
 case 0:
  w += sldns_str_print(s, sl, ".");
  break;
 case 1:
  w += sldns_wire2str_a_scan(d, dl, s, sl);
  break;
 case 2:
  w += sldns_wire2str_aaaa_scan(d, dl, s, sl);
  break;
 case 3:
  w += sldns_wire2str_dname_scan(d, dl, s, sl, pkt, pktlen);
  break;
 default:
  return -1;
 }

 if(*dl < 1)
  return -1;
 w += sldns_str_print(s, sl, " ");
 w += sldns_wire2str_b64_scan_num(d, dl, s, sl, *dl);
 return w;
}
