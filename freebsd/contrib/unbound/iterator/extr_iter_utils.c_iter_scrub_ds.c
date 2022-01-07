
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int rrset_class; int type; int dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct dns_msg {TYPE_2__* rep; } ;
struct TYPE_4__ {size_t an_numrrsets; size_t ns_numrrsets; size_t rrset_count; struct ub_packed_rrset_key** rrsets; } ;


 scalar_t__ LDNS_RR_TYPE_DS ;
 int VERB_ALGO ;
 int dname_subdomain_c (int ,int ) ;
 int log_nametypeclass (int ,char*,int ,scalar_t__,scalar_t__) ;
 int memmove (struct ub_packed_rrset_key**,struct ub_packed_rrset_key**,int) ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ query_dname_compare (int *,int ) ;

void
iter_scrub_ds(struct dns_msg* msg, struct ub_packed_rrset_key* ns, uint8_t* z)
{





 size_t i = msg->rep->an_numrrsets;
 while(i < (msg->rep->an_numrrsets + msg->rep->ns_numrrsets)) {
  struct ub_packed_rrset_key* s = msg->rep->rrsets[i];
  if(ntohs(s->rk.type) == LDNS_RR_TYPE_DS &&
   (!ns || !dname_subdomain_c(ns->rk.dname, s->rk.dname)
   || query_dname_compare(z, s->rk.dname) == 0)) {
   log_nametypeclass(VERB_ALGO, "removing irrelevant DS",
    s->rk.dname, ntohs(s->rk.type),
    ntohs(s->rk.rrset_class));
   memmove(msg->rep->rrsets+i, msg->rep->rrsets+i+1,
    sizeof(struct ub_packed_rrset_key*) *
    (msg->rep->rrset_count-i-1));
   msg->rep->ns_numrrsets--;
   msg->rep->rrset_count--;

   continue;
  }
  i++;
 }
}
