
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct reply_info {int flags; scalar_t__ ar_numrrsets; int rrset_count; size_t an_numrrsets; size_t ns_numrrsets; struct ub_packed_rrset_key** rrsets; } ;


 int BIT_AA ;
 scalar_t__ LDNS_RR_TYPE_NS ;
 int VERB_ALGO ;
 scalar_t__ ntohs (int ) ;
 int verbose (int ,char*) ;

void
caps_strip_reply(struct reply_info* rep)
{
 size_t i;
 if(!rep) return;




 if(!(rep->flags&BIT_AA))
  return;

 if(rep->ar_numrrsets != 0) {
  verbose(VERB_ALGO, "caps fallback: removing additional section");
  rep->rrset_count -= rep->ar_numrrsets;
  rep->ar_numrrsets = 0;
 }


 for(i=rep->an_numrrsets; i<rep->an_numrrsets+rep->ns_numrrsets; i++) {
  struct ub_packed_rrset_key* s = rep->rrsets[i];
  if(ntohs(s->rk.type) == LDNS_RR_TYPE_NS) {




   verbose(VERB_ALGO, "caps fallback: removing NS rrset");
   if(i < rep->rrset_count-1)
    rep->rrsets[i]=rep->rrsets[rep->rrset_count-1];
   rep->rrset_count --;
   rep->ns_numrrsets --;
   break;
  }
 }
}
