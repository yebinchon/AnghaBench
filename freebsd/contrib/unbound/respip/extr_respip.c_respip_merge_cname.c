
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct ub_packed_rrset_key {int dummy; } ;
struct respip_client_info {int dummy; } ;
struct respip_action_info {scalar_t__ member_0; scalar_t__ action; int * member_1; } ;
struct reply_info {scalar_t__ security; size_t an_numrrsets; int flags; int * rrsets; } ;
struct regional {int dummy; } ;
struct query_info {int dummy; } ;


 scalar_t__ FLAGS_GET_RCODE (int ) ;
 int FLAGS_SET_RCODE (int ,scalar_t__) ;
 scalar_t__ LDNS_RCODE_NOERROR ;
 scalar_t__ LDNS_RCODE_NXDOMAIN ;
 scalar_t__ LDNS_RCODE_YXDOMAIN ;
 int copy_rrset (int ,struct regional*) ;
 int log_info (char*) ;
 struct reply_info* make_new_reply_info (struct reply_info*,struct regional*,size_t,size_t) ;
 scalar_t__ respip_none ;
 int respip_rewrite_reply (struct query_info const*,struct respip_client_info const*,struct reply_info const*,struct reply_info**,struct respip_action_info*,struct ub_packed_rrset_key**,int,struct regional*) ;
 scalar_t__ sec_status_bogus ;

int
respip_merge_cname(struct reply_info* base_rep,
 const struct query_info* qinfo, const struct reply_info* tgt_rep,
 const struct respip_client_info* cinfo, int must_validate,
 struct reply_info** new_repp, struct regional* region)
{
 struct reply_info* new_rep;
 struct reply_info* tmp_rep = ((void*)0);
 struct ub_packed_rrset_key* alias_rrset = ((void*)0);
 uint16_t tgt_rcode;
 size_t i, j;
 struct respip_action_info actinfo = {respip_none, ((void*)0)};
 tgt_rcode = FLAGS_GET_RCODE(tgt_rep->flags);
 if((tgt_rcode != LDNS_RCODE_NOERROR &&
  tgt_rcode != LDNS_RCODE_NXDOMAIN &&
  tgt_rcode != LDNS_RCODE_YXDOMAIN) ||
  (must_validate && tgt_rep->security <= sec_status_bogus)) {
  return 0;
 }


 if(!respip_rewrite_reply(qinfo, cinfo, tgt_rep, &tmp_rep, &actinfo,
  &alias_rrset, 1, region))
  return 0;
 if(actinfo.action != respip_none) {
  log_info("CNAME target of redirect response-ip action would "
   "be subject to response-ip action, too; stripped");
  *new_repp = base_rep;
  return 1;
 }





 new_rep = make_new_reply_info(base_rep, region,
  base_rep->an_numrrsets + tgt_rep->an_numrrsets,
  base_rep->an_numrrsets);
 if(!new_rep)
  return 0;
 for(i=0,j=base_rep->an_numrrsets; i<tgt_rep->an_numrrsets; i++,j++) {
  new_rep->rrsets[j] = copy_rrset(tgt_rep->rrsets[i], region);
  if(!new_rep->rrsets[j])
   return 0;
 }

 FLAGS_SET_RCODE(new_rep->flags, tgt_rcode);
 *new_repp = new_rep;
 return 1;
}
