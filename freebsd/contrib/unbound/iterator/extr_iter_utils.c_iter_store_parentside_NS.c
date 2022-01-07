
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_packed_rrset_key {int dummy; } ;
struct reply_info {int dummy; } ;
struct module_env {int dummy; } ;


 int VERB_ALGO ;
 int iter_store_parentside_rrset (struct module_env*,struct ub_packed_rrset_key*) ;
 int log_rrset_key (int ,char*,struct ub_packed_rrset_key*) ;
 struct ub_packed_rrset_key* reply_get_NS_rrset (struct reply_info*) ;

void
iter_store_parentside_NS(struct module_env* env, struct reply_info* rep)
{
 struct ub_packed_rrset_key* rrset = reply_get_NS_rrset(rep);
 if(rrset) {
  log_rrset_key(VERB_ALGO, "store parent-side NS", rrset);
  iter_store_parentside_rrset(env, rrset);
 }
}
