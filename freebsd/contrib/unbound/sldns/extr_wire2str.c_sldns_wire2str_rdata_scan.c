
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int sldns_rr_descriptor ;
typedef int sldns_rdf_type ;


 int * sldns_rr_descript (int ) ;
 int sldns_rr_descriptor_field_type (int const*,size_t) ;
 size_t sldns_rr_descriptor_maximum (int const*) ;
 size_t sldns_rr_descriptor_minimum (int const*) ;
 scalar_t__ sldns_str_print (char**,size_t*,char*) ;
 int sldns_wire2str_rdata_unknown_scan (int **,size_t*,char**,size_t*) ;
 int sldns_wire2str_rdf_scan (int **,size_t*,char**,size_t*,int ,int *,size_t) ;

int sldns_wire2str_rdata_scan(uint8_t** d, size_t* dlen, char** s,
 size_t* slen, uint16_t rrtype, uint8_t* pkt, size_t pktlen)
{

 uint8_t* origd = *d;
 char* origs = *s;
 size_t origdlen = *dlen, origslen = *slen;
 size_t r_cnt, r_max;
 sldns_rdf_type rdftype;
 int w = 0, n;

 const sldns_rr_descriptor *desc = sldns_rr_descript(rrtype);
 if(!desc)
  return sldns_wire2str_rdata_unknown_scan(d, dlen, s, slen);


 r_max = sldns_rr_descriptor_maximum(desc);
 for(r_cnt=0; r_cnt < r_max; r_cnt++) {
  if(*dlen == 0) {
   if(r_cnt < sldns_rr_descriptor_minimum(desc))
    goto failed;
   break;
  }
  rdftype = sldns_rr_descriptor_field_type(desc, r_cnt);
  if(r_cnt != 0)
   w += sldns_str_print(s, slen, " ");
  n = sldns_wire2str_rdf_scan(d, dlen, s, slen, rdftype,
   pkt, pktlen);
  if(n == -1) {
  failed:

   *d = origd; *s = origs;
   *dlen = origdlen; *slen = origslen;
   return sldns_wire2str_rdata_unknown_scan(d, dlen,
    s, slen);
  }
  w += n;
 }
 if(*dlen != 0) {
  goto failed;
 }
 return w;
}
