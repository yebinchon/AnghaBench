
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker {int scratchpad; } ;
struct ub_packed_rrset_key {int dummy; } ;
struct respip_client_info {int dummy; } ;
struct respip_action_info {scalar_t__ action; scalar_t__ addrinfo; int * member_1; int member_0; } ;
struct reply_info {int dummy; } ;
struct query_info {int local_alias; int qclass; int qtype; int qname; } ;
struct comm_reply {int dummy; } ;


 int LDNS_RR_TYPE_A ;
 int LDNS_RR_TYPE_AAAA ;
 int LDNS_RR_TYPE_ANY ;
 scalar_t__ respip_deny ;
 scalar_t__ respip_inform_deny ;
 int respip_inform_print (scalar_t__,int ,int ,int ,int ,struct comm_reply*) ;
 int respip_none ;
 int respip_rewrite_reply (struct query_info const*,struct respip_client_info*,struct reply_info*,struct reply_info**,struct respip_action_info*,struct ub_packed_rrset_key**,int ,int ) ;

__attribute__((used)) static int
apply_respip_action(struct worker* worker, const struct query_info* qinfo,
 struct respip_client_info* cinfo, struct reply_info* rep,
 struct comm_reply* repinfo, struct ub_packed_rrset_key** alias_rrset,
 struct reply_info** encode_repp)
{
 struct respip_action_info actinfo = {respip_none, ((void*)0)};

 if(qinfo->qtype != LDNS_RR_TYPE_A &&
  qinfo->qtype != LDNS_RR_TYPE_AAAA &&
  qinfo->qtype != LDNS_RR_TYPE_ANY)
  return 1;

 if(!respip_rewrite_reply(qinfo, cinfo, rep, encode_repp, &actinfo,
  alias_rrset, 0, worker->scratchpad))
  return 0;



 if((actinfo.action == respip_deny ||
  actinfo.action == respip_inform_deny) &&
  *encode_repp == rep)
  *encode_repp = ((void*)0);



 if(actinfo.addrinfo) {
  respip_inform_print(actinfo.addrinfo, qinfo->qname,
   qinfo->qtype, qinfo->qclass, qinfo->local_alias,
   repinfo);
 }

 return 1;
}
