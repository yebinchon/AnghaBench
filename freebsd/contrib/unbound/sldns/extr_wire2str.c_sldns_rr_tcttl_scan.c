
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;


 int print_remainder_hex (char*,int **,size_t*,char**,size_t*) ;
 int sldns_read_uint16 (int *) ;
 scalar_t__ sldns_read_uint32 (int *) ;
 int sldns_str_print (char**,size_t*,char*,...) ;
 scalar_t__ sldns_wire2str_class_print (char**,size_t*,int ) ;
 scalar_t__ sldns_wire2str_type_print (char**,size_t*,int ) ;

__attribute__((used)) static int sldns_rr_tcttl_scan(uint8_t** d, size_t* dl, char** s, size_t* sl)
{
 int w = 0;
 uint16_t t, c;
 uint32_t ttl;
 if(*dl < 8) {
  if(*dl < 4)
   return w + print_remainder_hex("; Error malformed 0x",
    d, dl, s, sl);

  t = sldns_read_uint16(*d);
  c = sldns_read_uint16((*d)+2);
  (*d)+=4;
  (*dl)-=4;
  w += sldns_wire2str_class_print(s, sl, c);
  w += sldns_str_print(s, sl, "\t");
  w += sldns_wire2str_type_print(s, sl, t);
  if(*dl == 0)
   return w + sldns_str_print(s, sl, "; Error no ttl");
  return w + print_remainder_hex(
   "; Error malformed ttl 0x", d, dl, s, sl);
 }
 t = sldns_read_uint16(*d);
 c = sldns_read_uint16((*d)+2);
 ttl = sldns_read_uint32((*d)+4);
 (*d)+=8;
 (*dl)-=8;
 w += sldns_str_print(s, sl, "%lu\t", (unsigned long)ttl);
 w += sldns_wire2str_class_print(s, sl, c);
 w += sldns_str_print(s, sl, "\t");
 w += sldns_wire2str_type_print(s, sl, t);
 return w;
}
