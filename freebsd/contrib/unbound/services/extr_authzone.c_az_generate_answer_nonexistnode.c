
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regional {int dummy; } ;
struct query_info {int dummy; } ;
struct dns_msg {int dummy; } ;
struct auth_zone {int dummy; } ;
struct auth_rrset {scalar_t__ type; } ;
struct auth_data {int dummy; } ;


 scalar_t__ LDNS_RR_TYPE_DNAME ;
 scalar_t__ LDNS_RR_TYPE_NS ;
 scalar_t__ az_empty_nonterminal (struct auth_zone*,struct query_info*,struct auth_data*) ;
 struct auth_data* az_find_wildcard (struct auth_zone*,struct query_info*,struct auth_data*) ;
 int az_generate_dname_answer (struct auth_zone*,struct query_info*,struct regional*,struct dns_msg*,struct auth_data*,struct auth_rrset*) ;
 int az_generate_notype_answer (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_data*) ;
 int az_generate_nxdomain_answer (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_data*,struct auth_data*) ;
 int az_generate_referral_answer (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_data*,struct auth_rrset*) ;
 int az_generate_wildcard_answer (struct auth_zone*,struct query_info*,struct regional*,struct dns_msg*,struct auth_data*,struct auth_data*,struct auth_data*) ;

__attribute__((used)) static int
az_generate_answer_nonexistnode(struct auth_zone* z, struct query_info* qinfo,
 struct regional* region, struct dns_msg* msg, struct auth_data* ce,
 struct auth_rrset* rrset, struct auth_data* node)
{
 struct auth_data* wildcard;



 if(ce && rrset && rrset->type == LDNS_RR_TYPE_NS) {
  return az_generate_referral_answer(z, region, msg, ce, rrset);
 }
 if(ce && rrset && rrset->type == LDNS_RR_TYPE_DNAME) {
  return az_generate_dname_answer(z, qinfo, region, msg, ce,
   rrset);
 }


 if(az_empty_nonterminal(z, qinfo, node)) {
  return az_generate_notype_answer(z, region, msg, node);
 }

 if((wildcard=az_find_wildcard(z, qinfo, ce)) != ((void*)0)) {
  return az_generate_wildcard_answer(z, qinfo, region, msg,
   ce, wildcard, node);
 }

 return az_generate_nxdomain_answer(z, region, msg, ce, node);
}
