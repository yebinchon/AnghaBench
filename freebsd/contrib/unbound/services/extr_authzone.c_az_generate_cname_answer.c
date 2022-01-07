
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regional {int dummy; } ;
struct query_info {int qtype; } ;
struct dns_msg {int dummy; } ;
struct auth_zone {int dummy; } ;
struct auth_rrset {int data; } ;
struct auth_data {int dummy; } ;


 int follow_cname_chain (struct auth_zone*,int ,struct regional*,struct dns_msg*,int ) ;
 int msg_add_rrset_an (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_data*,struct auth_rrset*) ;

__attribute__((used)) static int
az_generate_cname_answer(struct auth_zone* z, struct query_info* qinfo,
 struct regional* region, struct dns_msg* msg,
 struct auth_data* node, struct auth_rrset* rrset)
{
 if(!msg_add_rrset_an(z, region, msg, node, rrset)) return 0;
 if(!rrset) return 1;
 if(!follow_cname_chain(z, qinfo->qtype, region, msg, rrset->data))
  return 0;
 return 1;
}
