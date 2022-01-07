
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regional {int dummy; } ;
struct dns_msg {int dummy; } ;
struct auth_zone {int dummy; } ;
struct auth_rrset {int dummy; } ;
struct auth_data {struct auth_rrset* rrsets; } ;


 int LDNS_RR_TYPE_A ;
 int LDNS_RR_TYPE_AAAA ;
 int LDNS_RR_TYPE_MX ;
 int LDNS_RR_TYPE_SOA ;
 struct auth_rrset* az_domain_rrset (struct auth_data*,int ) ;
 int msg_add_rrset_an (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_data*,struct auth_rrset*) ;

__attribute__((used)) static int
az_generate_any_answer(struct auth_zone* z, struct regional* region,
 struct dns_msg* msg, struct auth_data* node)
{
 struct auth_rrset* rrset;
 int added = 0;

 if((rrset=az_domain_rrset(node, LDNS_RR_TYPE_SOA)) != ((void*)0)) {
  if(!msg_add_rrset_an(z, region, msg, node, rrset)) return 0;
  added++;
 }
 if((rrset=az_domain_rrset(node, LDNS_RR_TYPE_MX)) != ((void*)0)) {
  if(!msg_add_rrset_an(z, region, msg, node, rrset)) return 0;
  added++;
 }
 if((rrset=az_domain_rrset(node, LDNS_RR_TYPE_A)) != ((void*)0)) {
  if(!msg_add_rrset_an(z, region, msg, node, rrset)) return 0;
  added++;
 }
 if((rrset=az_domain_rrset(node, LDNS_RR_TYPE_AAAA)) != ((void*)0)) {
  if(!msg_add_rrset_an(z, region, msg, node, rrset)) return 0;
  added++;
 }
 if(added == 0 && node && node->rrsets) {
  if(!msg_add_rrset_an(z, region, msg, node,
   node->rrsets)) return 0;
 }
 return 1;
}
