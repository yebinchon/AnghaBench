
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct rrset_parse {scalar_t__ type; scalar_t__ section; struct rrset_parse* rrset_all_next; int dname; } ;
struct query_info {int qname; } ;
struct msg_parse {scalar_t__ an_rrsets; int flags; struct rrset_parse* rrset_first; } ;
struct module_env {TYPE_1__* cfg; } ;
struct iter_env {int priv; } ;
typedef int sldns_buffer ;
struct TYPE_2__ {int harden_glue; } ;


 scalar_t__ FLAGS_GET_RCODE (int ) ;
 scalar_t__ LDNS_RCODE_NOERROR ;
 scalar_t__ LDNS_RR_TYPE_A ;
 scalar_t__ LDNS_RR_TYPE_AAAA ;
 scalar_t__ LDNS_RR_TYPE_DNAME ;
 scalar_t__ LDNS_RR_TYPE_NS ;
 scalar_t__ LDNS_RR_TYPE_NSEC ;
 scalar_t__ LDNS_SECTION_ADDITIONAL ;
 scalar_t__ LDNS_SECTION_ANSWER ;
 scalar_t__ LDNS_SECTION_AUTHORITY ;
 scalar_t__ dname_pkt_compare (int *,int ,int ) ;
 scalar_t__ has_additional (scalar_t__) ;
 scalar_t__ pkt_strict_sub (int *,int ,int ) ;
 scalar_t__ pkt_sub (int *,int ,int *) ;
 scalar_t__ priv_rrset_bad (int ,int *,struct rrset_parse*) ;
 int remove_rrset (char*,int *,struct msg_parse*,struct rrset_parse*,struct rrset_parse**) ;
 scalar_t__ sanitize_nsec_is_overreach (struct rrset_parse*,int *) ;
 int soa_in_auth (struct msg_parse*) ;
 int store_rrset (int *,struct msg_parse*,struct module_env*,struct rrset_parse*) ;
 scalar_t__ sub_of_pkt (int *,int *,int ) ;

__attribute__((used)) static int
scrub_sanitize(sldns_buffer* pkt, struct msg_parse* msg,
 struct query_info* qinfo, uint8_t* zonename, struct module_env* env,
 struct iter_env* ie)
{
 int del_addi = 0;

 struct rrset_parse* rrset, *prev;
 prev = ((void*)0);
 rrset = msg->rrset_first;




 if(rrset && rrset->type == LDNS_RR_TYPE_DNAME &&
  rrset->section == LDNS_SECTION_ANSWER &&
  pkt_strict_sub(pkt, qinfo->qname, rrset->dname) &&
  pkt_sub(pkt, rrset->dname, zonename)) {
  prev = rrset;
  rrset = rrset->rrset_all_next;
 }
 while(rrset && rrset->section == LDNS_SECTION_ANSWER) {
  if(dname_pkt_compare(pkt, qinfo->qname, rrset->dname) != 0) {
   if(has_additional(rrset->type)) del_addi = 1;
   remove_rrset("sanitize: removing extraneous answer "
    "RRset:", pkt, msg, prev, &rrset);
   continue;
  }
  prev = rrset;
  rrset = rrset->rrset_all_next;
 }
 prev = ((void*)0);
 rrset = msg->rrset_first;
 while(rrset) {


  if( (rrset->type == LDNS_RR_TYPE_A ||
   rrset->type == LDNS_RR_TYPE_AAAA)) {





   if(priv_rrset_bad(ie->priv, pkt, rrset)) {
    remove_rrset(((void*)0), pkt, msg, prev, &rrset);
    continue;
   }
  }
  if(!pkt_sub(pkt, rrset->dname, zonename)) {
   if(msg->an_rrsets == 0 &&
    rrset->type == LDNS_RR_TYPE_NS &&
    rrset->section == LDNS_SECTION_AUTHORITY &&
    FLAGS_GET_RCODE(msg->flags) ==
    LDNS_RCODE_NOERROR && !soa_in_auth(msg) &&
    sub_of_pkt(pkt, zonename, rrset->dname)) {






    del_addi = 1;
   } else if(!env->cfg->harden_glue && (
    rrset->type == LDNS_RR_TYPE_A ||
    rrset->type == LDNS_RR_TYPE_AAAA)) {



    store_rrset(pkt, msg, env, rrset);
    remove_rrset("sanitize: storing potential "
    "poison RRset:", pkt, msg, prev, &rrset);
    continue;
   } else {
    if(has_additional(rrset->type)) del_addi = 1;
    remove_rrset("sanitize: removing potential "
    "poison RRset:", pkt, msg, prev, &rrset);
    continue;
   }
  }
  if(del_addi && rrset->section == LDNS_SECTION_ADDITIONAL) {
   remove_rrset("sanitize: removing potential "
   "poison reference RRset:", pkt, msg, prev, &rrset);
   continue;
  }

  if(rrset->type == LDNS_RR_TYPE_NSEC &&
   sanitize_nsec_is_overreach(rrset, zonename)) {
   remove_rrset("sanitize: removing overreaching NSEC "
    "RRset:", pkt, msg, prev, &rrset);
   continue;
  }
  prev = rrset;
  rrset = rrset->rrset_all_next;
 }
 return 1;
}
