
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct reply_info {int flags; } ;
struct regional {int dummy; } ;
typedef enum respip_action { ____Placeholder_respip_action } respip_action ;


 int FLAGS_SET_RCODE (int ,int) ;
 int LDNS_RCODE_NOERROR ;
 int LDNS_RCODE_NXDOMAIN ;
 int LDNS_RCODE_REFUSED ;
 scalar_t__ LDNS_RR_TYPE_ANY ;
 struct reply_info* make_new_reply_info (struct reply_info const*,struct regional*,size_t,size_t) ;
 int respip_always_nxdomain ;
 int respip_always_refuse ;
 int respip_inform_redirect ;
 int respip_redirect ;
 int respip_refuse ;
 int respip_static ;

__attribute__((used)) static int
respip_nodata_answer(uint16_t qtype, enum respip_action action,
 const struct reply_info *rep, size_t rrset_id,
 struct reply_info** new_repp, struct regional* region)
{
 struct reply_info* new_rep;

 if(action == respip_refuse || action == respip_always_refuse) {
  new_rep = make_new_reply_info(rep, region, 0, 0);
  if(!new_rep)
   return 0;
  FLAGS_SET_RCODE(new_rep->flags, LDNS_RCODE_REFUSED);
  *new_repp = new_rep;
  return 1;
 } else if(action == respip_static || action == respip_redirect ||
  action == respip_always_nxdomain ||
  action == respip_inform_redirect) {



  int rcode = (action == respip_always_nxdomain)?
   LDNS_RCODE_NXDOMAIN:LDNS_RCODE_NOERROR;




  if(qtype == LDNS_RR_TYPE_ANY)
   rrset_id = 0;
  new_rep = make_new_reply_info(rep, region, rrset_id, rrset_id);
  if(!new_rep)
   return 0;
  FLAGS_SET_RCODE(new_rep->flags, rcode);
  *new_repp = new_rep;
  return 1;
 }

 return 1;
}
