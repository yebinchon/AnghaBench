
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct rrset_parse {scalar_t__ section; scalar_t__ type; int size; int rr_count; struct rr_parse* rr_last; struct rr_parse* rr_first; int rrsig_count; struct rr_parse* rrsig_last; struct rr_parse* rrsig_first; } ;
struct rr_parse {scalar_t__ size; struct rr_parse* next; int ttl_data; scalar_t__ outside_packet; } ;
struct regional {int dummy; } ;
struct msg_parse {scalar_t__ qtype; } ;
typedef scalar_t__ sldns_pkt_section ;
typedef int sldns_buffer ;


 int LDNS_RCODE_FORMERR ;
 int LDNS_RCODE_SERVFAIL ;
 scalar_t__ LDNS_RR_TYPE_ANY ;
 scalar_t__ LDNS_RR_TYPE_RRSIG ;
 int calc_size (int *,scalar_t__,struct rr_parse*) ;
 scalar_t__ regional_alloc (struct regional*,int) ;
 scalar_t__ sig_is_double (int *,struct rrset_parse*,int ) ;
 int skip_ttl_rdata (int *) ;
 int sldns_buffer_current (int *) ;

__attribute__((used)) static int
add_rr_to_rrset(struct rrset_parse* rrset, sldns_buffer* pkt,
 struct msg_parse* msg, struct regional* region,
 sldns_pkt_section section, uint16_t type)
{
 struct rr_parse* rr;

 if(rrset->section != section && type != LDNS_RR_TYPE_RRSIG &&
  rrset->type != LDNS_RR_TYPE_RRSIG) {
  if(!skip_ttl_rdata(pkt))
   return LDNS_RCODE_FORMERR;
  return 0;
 }

 if( (msg->qtype == LDNS_RR_TYPE_RRSIG ||
      msg->qtype == LDNS_RR_TYPE_ANY)
     && sig_is_double(pkt, rrset, sldns_buffer_current(pkt))) {
  if(!skip_ttl_rdata(pkt))
   return LDNS_RCODE_FORMERR;
  return 0;
 }


 if(!(rr = (struct rr_parse*)regional_alloc(region, sizeof(*rr))))
  return LDNS_RCODE_SERVFAIL;
 rr->outside_packet = 0;
 rr->ttl_data = sldns_buffer_current(pkt);
 rr->next = 0;
 if(type == LDNS_RR_TYPE_RRSIG && rrset->type != LDNS_RR_TYPE_RRSIG) {
  if(rrset->rrsig_last)
   rrset->rrsig_last->next = rr;
  else rrset->rrsig_first = rr;
  rrset->rrsig_last = rr;
  rrset->rrsig_count++;
 } else {
  if(rrset->rr_last)
   rrset->rr_last->next = rr;
  else rrset->rr_first = rr;
  rrset->rr_last = rr;
  rrset->rr_count++;
 }


 if(!calc_size(pkt, type, rr))
  return LDNS_RCODE_FORMERR;
 rrset->size += rr->size;

 return 0;
}
