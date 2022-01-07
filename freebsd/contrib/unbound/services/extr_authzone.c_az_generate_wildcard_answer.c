
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct regional {int dummy; } ;
struct query_info {scalar_t__ qtype; } ;
struct TYPE_2__ {int qname_len; int qname; } ;
struct dns_msg {TYPE_1__ qinfo; } ;
struct auth_zone {int dummy; } ;
struct auth_rrset {int data; } ;
struct auth_data {size_t namelen; int * name; scalar_t__ rrsets; } ;


 scalar_t__ LDNS_RR_TYPE_ANY ;
 scalar_t__ LDNS_RR_TYPE_CNAME ;
 int az_add_nsec3_proof (struct auth_zone*,struct regional*,struct dns_msg*,int *,size_t,int ,int ,int ,int,int,int ) ;
 int az_change_dnames (struct dns_msg*,int *,int ,int ,int) ;
 struct auth_rrset* az_domain_rrset (struct auth_data*,scalar_t__) ;
 struct auth_rrset* az_find_nsec_cover (struct auth_zone*,struct auth_data**) ;
 int az_generate_any_answer (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_data*) ;
 int az_generate_notype_answer (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_data*) ;
 int dname_remove_label (int **,size_t*) ;
 int follow_cname_chain (struct auth_zone*,scalar_t__,struct regional*,struct dns_msg*,int ) ;
 int msg_add_rrset_an (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_data*,struct auth_rrset*) ;
 int msg_add_rrset_ns (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_data*,struct auth_rrset*) ;

__attribute__((used)) static int
az_generate_wildcard_answer(struct auth_zone* z, struct query_info* qinfo,
 struct regional* region, struct dns_msg* msg, struct auth_data* ce,
 struct auth_data* wildcard, struct auth_data* node)
{
 struct auth_rrset* rrset, *nsec;
 int insert_ce = 0;
 if((rrset=az_domain_rrset(wildcard, qinfo->qtype)) != ((void*)0)) {

  if(!msg_add_rrset_an(z, region, msg, wildcard, rrset))
   return 0;
  az_change_dnames(msg, wildcard->name, msg->qinfo.qname,
   msg->qinfo.qname_len, 1);
 } else if((rrset=az_domain_rrset(wildcard, LDNS_RR_TYPE_CNAME))!=((void*)0)) {

  if(!msg_add_rrset_an(z, region, msg, wildcard, rrset))
   return 0;
  az_change_dnames(msg, wildcard->name, msg->qinfo.qname,
   msg->qinfo.qname_len, 1);
  if(!follow_cname_chain(z, qinfo->qtype, region, msg,
   rrset->data))
   return 0;
 } else if(qinfo->qtype == LDNS_RR_TYPE_ANY && wildcard->rrsets) {

  if(!az_generate_any_answer(z, region, msg, wildcard))
   return 0;
  az_change_dnames(msg, wildcard->name, msg->qinfo.qname,
   msg->qinfo.qname_len, 1);
 } else {


  if(!az_generate_notype_answer(z, region, msg, wildcard))
   return 0;



  insert_ce = 1;
 }


 if((nsec=az_find_nsec_cover(z, &node)) != ((void*)0)) {
  if(!msg_add_rrset_ns(z, region, msg, node, nsec)) return 0;
 } else if(ce) {
  uint8_t* wildup = wildcard->name;
  size_t wilduplen= wildcard->namelen;
  dname_remove_label(&wildup, &wilduplen);
  if(!az_add_nsec3_proof(z, region, msg, wildup,
   wilduplen, msg->qinfo.qname,
   msg->qinfo.qname_len, 0, insert_ce, 1, 0))
   return 0;
 }



 az_change_dnames(msg, wildcard->name, msg->qinfo.qname,
  msg->qinfo.qname_len, 0);
 return 1;
}
