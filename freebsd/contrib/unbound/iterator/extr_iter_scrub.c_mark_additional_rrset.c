
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rrset_parse {scalar_t__ section; int flags; int rrset_class; struct rr_parse* rr_first; int type; } ;
struct rr_parse {struct rr_parse* next; } ;
struct msg_parse {int dummy; } ;
typedef int sldns_buffer ;
typedef int hashvalue_type ;


 int LDNS_RR_TYPE_A ;
 int LDNS_RR_TYPE_AAAA ;
 scalar_t__ LDNS_SECTION_ADDITIONAL ;
 int RRSET_SCRUB_OK ;
 scalar_t__ get_additional_name (struct rrset_parse*,struct rr_parse*,int **,size_t*,int *) ;
 int has_additional (int ) ;
 struct rrset_parse* msgparse_hashtable_lookup (struct msg_parse*,int *,int ,int ,int *,size_t,int ,int ) ;
 int pkt_hash_rrset (int *,int *,int ,int ,int ) ;

__attribute__((used)) static void
mark_additional_rrset(sldns_buffer* pkt, struct msg_parse* msg,
 struct rrset_parse* rrset)
{

 uint8_t* nm = ((void*)0);
 size_t nmlen = 0;
 struct rr_parse* rr;

 if(!has_additional(rrset->type))
  return;
 for(rr = rrset->rr_first; rr; rr = rr->next) {
  if(get_additional_name(rrset, rr, &nm, &nmlen, pkt)) {

   hashvalue_type h = pkt_hash_rrset(pkt, nm,
    LDNS_RR_TYPE_A, rrset->rrset_class, 0);
   struct rrset_parse* r = msgparse_hashtable_lookup(
    msg, pkt, h, 0, nm, nmlen,
    LDNS_RR_TYPE_A, rrset->rrset_class);
   if(r && r->section == LDNS_SECTION_ADDITIONAL) {
    r->flags |= RRSET_SCRUB_OK;
   }


   h = pkt_hash_rrset(pkt, nm, LDNS_RR_TYPE_AAAA,
    rrset->rrset_class, 0);
   r = msgparse_hashtable_lookup(msg, pkt, h, 0, nm,
    nmlen, LDNS_RR_TYPE_AAAA, rrset->rrset_class);
   if(r && r->section == LDNS_SECTION_ADDITIONAL) {
    r->flags |= RRSET_SCRUB_OK;
   }
  }
 }
}
