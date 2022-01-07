
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 scalar_t__ print_remainder_hex (char*,int **,size_t*,char**,size_t*) ;
 int sldns_read_uint16 (int *) ;
 int sldns_str_print (char**,size_t*,char*) ;
 scalar_t__ sldns_wire2str_class_print (char**,size_t*,int ) ;
 scalar_t__ sldns_wire2str_dname_scan (int **,size_t*,char**,size_t*,int *,size_t) ;
 scalar_t__ sldns_wire2str_type_print (char**,size_t*,int ) ;

int sldns_wire2str_rrquestion_scan(uint8_t** d, size_t* dlen, char** s,
 size_t* slen, uint8_t* pkt, size_t pktlen)
{
 int w = 0;
 uint16_t t, c;
 w += sldns_wire2str_dname_scan(d, dlen, s, slen, pkt, pktlen);
 w += sldns_str_print(s, slen, "\t");
 if(*dlen < 4) {
  if(*dlen == 0)
   return w + sldns_str_print(s, slen, "Error malformed\n");
  w += print_remainder_hex("Error malformed 0x", d, dlen, s, slen);
  return w + sldns_str_print(s, slen, "\n");
 }
 t = sldns_read_uint16(*d);
 c = sldns_read_uint16((*d)+2);
 (*d)+=4;
 (*dlen)-=4;
 w += sldns_wire2str_class_print(s, slen, c);
 w += sldns_str_print(s, slen, "\t");
 w += sldns_wire2str_type_print(s, slen, t);
 w += sldns_str_print(s, slen, "\n");
 return w;
}
