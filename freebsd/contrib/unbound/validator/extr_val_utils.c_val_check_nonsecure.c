
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ub_packed_rrset_key {int dummy; } ;
struct reply_info {size_t an_numrrsets; size_t ns_numrrsets; size_t rrset_count; scalar_t__ ar_numrrsets; TYPE_4__** rrsets; int security; } ;
struct packed_rrset_data {scalar_t__ security; } ;
struct module_env {TYPE_2__* cfg; } ;
struct TYPE_8__ {scalar_t__ data; } ;
struct TYPE_6__ {int rrset_class; int type; int dname; } ;
struct TYPE_9__ {TYPE_3__ entry; TYPE_1__ rk; } ;
struct TYPE_7__ {int val_clean_additional; } ;


 scalar_t__ LDNS_RR_TYPE_NS ;
 int VERB_ALGO ;
 int VERB_QUERY ;
 int log_nametypeclass (int ,char*,int ,scalar_t__,scalar_t__) ;
 int memmove (TYPE_4__**,TYPE_4__**,int) ;
 scalar_t__ ntohs (int ) ;
 int sec_status_bogus ;
 scalar_t__ sec_status_secure ;
 int verbose (int ,char*) ;

void
val_check_nonsecure(struct module_env* env, struct reply_info* rep)
{
 size_t i;

 for(i=rep->an_numrrsets; i<rep->an_numrrsets+rep->ns_numrrsets; i++) {
  if(((struct packed_rrset_data*)rep->rrsets[i]->entry.data)
   ->security != sec_status_secure) {
   if(rep->an_numrrsets != 0 &&
    ntohs(rep->rrsets[i]->rk.type)
    == LDNS_RR_TYPE_NS) {
    verbose(VERB_ALGO, "truncate to minimal");
    rep->ar_numrrsets = 0;
    rep->rrset_count = rep->an_numrrsets +
     rep->ns_numrrsets;

    memmove(rep->rrsets+i, rep->rrsets+i+1,
     sizeof(struct ub_packed_rrset_key*)*
     (rep->rrset_count - i - 1));
    rep->ns_numrrsets--;
    rep->rrset_count--;
    i--;
    return;
   }

   log_nametypeclass(VERB_QUERY, "message is bogus, "
    "non secure rrset",
    rep->rrsets[i]->rk.dname,
    ntohs(rep->rrsets[i]->rk.type),
    ntohs(rep->rrsets[i]->rk.rrset_class));
   rep->security = sec_status_bogus;
   return;
  }
 }

 if(!env->cfg->val_clean_additional)
  return;
 for(i=rep->an_numrrsets+rep->ns_numrrsets; i<rep->rrset_count; i++) {
  if(((struct packed_rrset_data*)rep->rrsets[i]->entry.data)
   ->security != sec_status_secure) {
   memmove(rep->rrsets+i, rep->rrsets+i+1,
    sizeof(struct ub_packed_rrset_key*)*
    (rep->rrset_count - i - 1));
   rep->ar_numrrsets--;
   rep->rrset_count--;
   i--;
  }
 }
}
