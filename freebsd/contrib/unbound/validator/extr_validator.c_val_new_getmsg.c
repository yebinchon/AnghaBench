
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct val_qstate {scalar_t__ rrset_skip; TYPE_1__* chase_reply; struct dns_msg* orig_msg; int qchase; } ;
struct ub_packed_rrset_key {int dummy; } ;
struct rrset_ref {int dummy; } ;
struct reply_info {int flags; int qdcount; int rrset_count; struct reply_info* rrsets; } ;
struct module_qstate {int return_rcode; int query_flags; int region; int qinfo; struct dns_msg* return_msg; } ;
struct dns_msg {struct reply_info* rep; int qinfo; } ;
struct TYPE_2__ {void* rrsets; } ;


 int BIT_CD ;
 int BIT_QR ;
 int BIT_RA ;
 int BIT_RD ;
 int LDNS_RCODE_NOERROR ;
 int RR_COUNT_MAX ;
 int VERB_ALGO ;
 int memset (struct reply_info*,int ,int) ;
 scalar_t__ regional_alloc (int ,int) ;
 void* regional_alloc_init (int ,struct reply_info*,int) ;
 int verbose (int ,char*) ;

__attribute__((used)) static struct val_qstate*
val_new_getmsg(struct module_qstate* qstate, struct val_qstate* vq)
{
 if(!qstate->return_msg || qstate->return_rcode != LDNS_RCODE_NOERROR) {

  verbose(VERB_ALGO, "constructing reply for validation");
  vq->orig_msg = (struct dns_msg*)regional_alloc(qstate->region,
   sizeof(struct dns_msg));
  if(!vq->orig_msg)
   return ((void*)0);
  vq->orig_msg->qinfo = qstate->qinfo;
  vq->orig_msg->rep = (struct reply_info*)regional_alloc(
   qstate->region, sizeof(struct reply_info));
  if(!vq->orig_msg->rep)
   return ((void*)0);
  memset(vq->orig_msg->rep, 0, sizeof(struct reply_info));
  vq->orig_msg->rep->flags = (uint16_t)(qstate->return_rcode&0xf)
   |BIT_QR|BIT_RA|(qstate->query_flags|(BIT_CD|BIT_RD));
  vq->orig_msg->rep->qdcount = 1;
 } else {
  vq->orig_msg = qstate->return_msg;
 }
 vq->qchase = qstate->qinfo;

 vq->chase_reply = regional_alloc_init(qstate->region,
  vq->orig_msg->rep,
  sizeof(struct reply_info) - sizeof(struct rrset_ref));
 if(!vq->chase_reply)
  return ((void*)0);
 if(vq->orig_msg->rep->rrset_count > RR_COUNT_MAX)
  return ((void*)0);
 vq->chase_reply->rrsets = regional_alloc_init(qstate->region,
  vq->orig_msg->rep->rrsets, sizeof(struct ub_packed_rrset_key*)
   * vq->orig_msg->rep->rrset_count);
 if(!vq->chase_reply->rrsets)
  return ((void*)0);
 vq->rrset_skip = 0;
 return vq;
}
