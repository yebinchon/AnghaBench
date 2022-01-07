
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct regional {int dummy; } ;
struct edns_data {int udp_size; int edns_present; int * opt_list; void* bits; void* edns_version; void* ext_rcode; } ;
typedef int sldns_buffer ;


 scalar_t__ LDNS_ANCOUNT (int ) ;
 int LDNS_ARCOUNT (int ) ;
 scalar_t__ LDNS_NSCOUNT (int ) ;
 int LDNS_QDCOUNT (int ) ;
 int LDNS_RCODE_FORMERR ;
 int LDNS_RCODE_SERVFAIL ;
 void* LDNS_RR_TYPE_OPT ;
 int log_assert (int) ;
 int memset (struct edns_data*,int ,int) ;
 int parse_edns_options (int *,size_t,struct edns_data*,struct regional*) ;
 int pkt_dname_len (int *) ;
 int skip_pkt_rrs (int *,int) ;
 int sldns_buffer_begin (int *) ;
 int * sldns_buffer_current (int *) ;
 void* sldns_buffer_read_u16 (int *) ;
 void* sldns_buffer_read_u8 (int *) ;
 size_t sldns_buffer_remaining (int *) ;

int
parse_edns_from_pkt(sldns_buffer* pkt, struct edns_data* edns,
 struct regional* region)
{
 size_t rdata_len;
 uint8_t* rdata_ptr;
 log_assert(LDNS_QDCOUNT(sldns_buffer_begin(pkt)) == 1);
 if(LDNS_ANCOUNT(sldns_buffer_begin(pkt)) != 0 ||
  LDNS_NSCOUNT(sldns_buffer_begin(pkt)) != 0) {
  if(!skip_pkt_rrs(pkt, ((int)LDNS_ANCOUNT(sldns_buffer_begin(pkt)))+
   ((int)LDNS_NSCOUNT(sldns_buffer_begin(pkt)))))
   return 0;
 }

 if(LDNS_ARCOUNT(sldns_buffer_begin(pkt)) > 1) {
  return LDNS_RCODE_FORMERR;
 }
 if(LDNS_ARCOUNT(sldns_buffer_begin(pkt)) == 0) {
  memset(edns, 0, sizeof(*edns));
  edns->udp_size = 512;
  return 0;
 }

 if(pkt_dname_len(pkt) != 1)
  return LDNS_RCODE_FORMERR;
 if(sldns_buffer_remaining(pkt) < 10)
  return LDNS_RCODE_FORMERR;
 if(sldns_buffer_read_u16(pkt) != LDNS_RR_TYPE_OPT)
  return LDNS_RCODE_FORMERR;
 edns->edns_present = 1;
 edns->udp_size = sldns_buffer_read_u16(pkt);
 edns->ext_rcode = sldns_buffer_read_u8(pkt);
 edns->edns_version = sldns_buffer_read_u8(pkt);
 edns->bits = sldns_buffer_read_u16(pkt);
 edns->opt_list = ((void*)0);


 rdata_len = sldns_buffer_read_u16(pkt);
 if(sldns_buffer_remaining(pkt) < rdata_len)
  return LDNS_RCODE_FORMERR;
 rdata_ptr = sldns_buffer_current(pkt);
 if(!parse_edns_options(rdata_ptr, rdata_len, edns, region))
  return LDNS_RCODE_SERVFAIL;



 return 0;
}
