
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct rrset_parse {scalar_t__ type; struct rr_parse* rr_first; } ;
struct rr_parse {struct rr_parse* next; int ttl_data; } ;
typedef int sldns_buffer ;


 scalar_t__ LDNS_RR_TYPE_RRSIG ;
 int log_assert (int) ;
 scalar_t__ pkt_rrsig_covered_equals (int *,int ,int ) ;

__attribute__((used)) static int
rrset_has_sigover(sldns_buffer* pkt, struct rrset_parse* rrset, uint16_t type,
 int* hasother)
{
 int res = 0;
 struct rr_parse* rr = rrset->rr_first;
 log_assert( rrset->type == LDNS_RR_TYPE_RRSIG );
 while(rr) {
  if(pkt_rrsig_covered_equals(pkt, rr->ttl_data, type))
   res = 1;
  else *hasother = 1;
  rr = rr->next;
 }
 return res;
}
