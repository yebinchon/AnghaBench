
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ LDNS_ANCOUNT (int *) ;
 scalar_t__ LDNS_ARCOUNT (int *) ;
 size_t LDNS_HEADER_SIZE ;
 scalar_t__ LDNS_NSCOUNT (int *) ;
 scalar_t__ LDNS_QDCOUNT (int *) ;
 scalar_t__ print_remainder_hex (char*,int **,size_t*,char**,size_t*) ;
 scalar_t__ sldns_str_print (char**,size_t*,char*,...) ;
 scalar_t__ sldns_wire2str_header_scan (int **,size_t*,char**,size_t*) ;
 scalar_t__ sldns_wire2str_rr_scan (int **,size_t*,char**,size_t*,int *,size_t) ;
 scalar_t__ sldns_wire2str_rrquestion_scan (int **,size_t*,char**,size_t*,int *,size_t) ;

int sldns_wire2str_pkt_scan(uint8_t** d, size_t* dlen, char** s, size_t* slen)
{
 int w = 0;
 unsigned qdcount, ancount, nscount, arcount, i;
 uint8_t* pkt = *d;
 size_t pktlen = *dlen;
 if(*dlen >= LDNS_HEADER_SIZE) {
  qdcount = (unsigned)LDNS_QDCOUNT(*d);
  ancount = (unsigned)LDNS_ANCOUNT(*d);
  nscount = (unsigned)LDNS_NSCOUNT(*d);
  arcount = (unsigned)LDNS_ARCOUNT(*d);
 } else {
  qdcount = ancount = nscount = arcount = 0;
 }
 w += sldns_wire2str_header_scan(d, dlen, s, slen);
 w += sldns_str_print(s, slen, "\n");
 w += sldns_str_print(s, slen, ";; QUESTION SECTION:\n");
 for(i=0; i<qdcount; i++) {
  w += sldns_wire2str_rrquestion_scan(d, dlen, s, slen,
   pkt, pktlen);
  if(!*dlen) break;
 }
 w += sldns_str_print(s, slen, "\n");
 w += sldns_str_print(s, slen, ";; ANSWER SECTION:\n");
 for(i=0; i<ancount; i++) {
  w += sldns_wire2str_rr_scan(d, dlen, s, slen, pkt, pktlen);
  if(!*dlen) break;
 }
 w += sldns_str_print(s, slen, "\n");
 w += sldns_str_print(s, slen, ";; AUTHORITY SECTION:\n");
 for(i=0; i<nscount; i++) {
  w += sldns_wire2str_rr_scan(d, dlen, s, slen, pkt, pktlen);
  if(!*dlen) break;
 }
 w += sldns_str_print(s, slen, "\n");
 w += sldns_str_print(s, slen, ";; ADDITIONAL SECTION:\n");
 for(i=0; i<arcount; i++) {
  w += sldns_wire2str_rr_scan(d, dlen, s, slen, pkt, pktlen);
  if(!*dlen) break;
 }

 w += sldns_str_print(s, slen, ";; MSG SIZE  rcvd: %d\n", (int)pktlen);
 if(*dlen > 0) {
  w += print_remainder_hex(";; trailing garbage 0x",
   d, dlen, s, slen);
  w += sldns_str_print(s, slen, "\n");
 }
 return w;
}
