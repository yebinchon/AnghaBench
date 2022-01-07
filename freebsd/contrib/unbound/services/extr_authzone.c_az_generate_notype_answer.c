
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regional {int dummy; } ;
struct TYPE_2__ {int qname_len; int qname; } ;
struct dns_msg {TYPE_1__ qinfo; } ;
struct auth_zone {int dummy; } ;
struct auth_rrset {int dummy; } ;
struct auth_data {int namelen; int name; } ;


 int LDNS_RR_TYPE_NSEC ;
 int az_add_negative_soa (struct auth_zone*,struct regional*,struct dns_msg*) ;
 int az_add_nsec3_proof (struct auth_zone*,struct regional*,struct dns_msg*,int ,int ,int ,int ,int,int,int ,int ) ;
 struct auth_rrset* az_domain_rrset (struct auth_data*,int ) ;
 int msg_add_rrset_ns (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_data*,struct auth_rrset*) ;

__attribute__((used)) static int
az_generate_notype_answer(struct auth_zone* z, struct regional* region,
 struct dns_msg* msg, struct auth_data* node)
{
 struct auth_rrset* rrset;
 if(!az_add_negative_soa(z, region, msg)) return 0;

 if((rrset=az_domain_rrset(node, LDNS_RR_TYPE_NSEC))!=((void*)0)) {
  if(!msg_add_rrset_ns(z, region, msg, node, rrset)) return 0;
 } else if(node) {

  if(!az_add_nsec3_proof(z, region, msg, node->name,
   node->namelen, msg->qinfo.qname,
   msg->qinfo.qname_len, 1, 1, 0, 0))
   return 0;
 }
 return 1;
}
