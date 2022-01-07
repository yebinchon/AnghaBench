
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;
typedef struct TYPE_14__ TYPE_12__ ;


typedef int uint16_t ;
typedef int time_t ;
struct TYPE_16__ {int ans_secure; scalar_t__ extended; int * ans_rcode; int ans_bogus; } ;
struct TYPE_19__ {TYPE_12__* cfg; scalar_t__ need_to_validate; int * now; } ;
struct worker {TYPE_1__ stats; int scratchpad; TYPE_4__ env; } ;
struct query_info {int local_alias; int qclass; int qtype; int qname_len; int qname; } ;
struct edns_data {int udp_size; int bits; int * opt_list; scalar_t__ ext_rcode; void* edns_version; } ;
struct TYPE_17__ {int local_alias; } ;
struct dns_msg {TYPE_2__ qinfo; TYPE_3__* rep; } ;
struct delegpt {int dummy; } ;
struct comm_reply {TYPE_13__* c; } ;
struct TYPE_18__ {int flags; } ;
struct TYPE_15__ {int buffer; } ;
struct TYPE_14__ {int val_clean_additional; scalar_t__ ignore_cd; } ;


 int BIT_CD ;
 int BIT_QR ;
 int BIT_RA ;
 void* EDNS_ADVERTISED_SIZE ;
 void* EDNS_ADVERTISED_VERSION ;
 int EDNS_DO ;
 int LDNS_RCODE_MASK ;
 size_t LDNS_RCODE_SERVFAIL ;
 int apply_edns_options (struct edns_data*,struct edns_data*,TYPE_12__*,TYPE_13__*,int ) ;
 int check_delegation_secure (TYPE_3__*) ;
 int deleg_remove_nonsecure_additional (TYPE_3__*) ;
 struct delegpt* dns_cache_find_delegation (TYPE_4__*,int ,int ,int ,int ,int ,struct dns_msg**,int ) ;
 int error_encode (int ,size_t,TYPE_2__*,int,int,struct edns_data*) ;
 int inplace_cb_reply_cache_call (TYPE_4__*,struct query_info*,int *,TYPE_3__*,int,struct edns_data*,struct comm_reply*,int ) ;
 int inplace_cb_reply_servfail_call (TYPE_4__*,struct query_info*,int *,TYPE_3__*,size_t,struct edns_data*,struct comm_reply*,int ) ;
 int reply_info_answer_encode (TYPE_2__*,TYPE_3__*,int,int,int ,int ,int,int ,int,struct edns_data*,int,int) ;






 int server_stats_insrcode (TYPE_1__*,int ) ;

__attribute__((used)) static int
answer_norec_from_cache(struct worker* worker, struct query_info* qinfo,
 uint16_t id, uint16_t flags, struct comm_reply* repinfo,
 struct edns_data* edns)
{
 struct edns_data edns_bak;
 uint16_t udpsize = edns->udp_size;
 int secure = 0;
 time_t timenow = *worker->env.now;
 int must_validate = (!(flags&BIT_CD) || worker->env.cfg->ignore_cd)
  && worker->env.need_to_validate;
 struct dns_msg *msg = ((void*)0);
 struct delegpt *dp;

 dp = dns_cache_find_delegation(&worker->env, qinfo->qname,
  qinfo->qname_len, qinfo->qtype, qinfo->qclass,
  worker->scratchpad, &msg, timenow);
 if(!dp) {
  return 0;
 }



 msg->qinfo.local_alias = qinfo->local_alias;
 if(must_validate) {
  switch(check_delegation_secure(msg->rep)) {
  case 128:


   return 0;
  case 133:
  case 129:

   edns->edns_version = EDNS_ADVERTISED_VERSION;
   edns->udp_size = EDNS_ADVERTISED_SIZE;
   edns->ext_rcode = 0;
   edns->bits &= EDNS_DO;
   if(!inplace_cb_reply_servfail_call(&worker->env, qinfo, ((void*)0),
    msg->rep, LDNS_RCODE_SERVFAIL, edns, repinfo, worker->scratchpad))
     return 0;
   error_encode(repinfo->c->buffer, LDNS_RCODE_SERVFAIL,
    &msg->qinfo, id, flags, edns);
   if(worker->stats.extended) {
    worker->stats.ans_bogus++;
    worker->stats.ans_rcode[LDNS_RCODE_SERVFAIL]++;
   }
   return 1;
  case 130:


   if(worker->env.cfg->val_clean_additional)
    deleg_remove_nonsecure_additional(msg->rep);
   secure = 1;
   break;
  case 132:
  case 131:
  default:

   secure = 0;
   break;
  }
 }

 edns_bak = *edns;
 edns->edns_version = EDNS_ADVERTISED_VERSION;
 edns->udp_size = EDNS_ADVERTISED_SIZE;
 edns->ext_rcode = 0;
 edns->bits &= EDNS_DO;
 if(!inplace_cb_reply_cache_call(&worker->env, qinfo, ((void*)0), msg->rep,
  (int)(flags&LDNS_RCODE_MASK), edns, repinfo, worker->scratchpad))
   return 0;
 msg->rep->flags |= BIT_QR|BIT_RA;
 if(!apply_edns_options(edns, &edns_bak, worker->env.cfg,
  repinfo->c, worker->scratchpad) ||
  !reply_info_answer_encode(&msg->qinfo, msg->rep, id, flags,
  repinfo->c->buffer, 0, 1, worker->scratchpad,
  udpsize, edns, (int)(edns->bits & EDNS_DO), secure)) {
  if(!inplace_cb_reply_servfail_call(&worker->env, qinfo, ((void*)0), ((void*)0),
   LDNS_RCODE_SERVFAIL, edns, repinfo, worker->scratchpad))
    edns->opt_list = ((void*)0);
  error_encode(repinfo->c->buffer, LDNS_RCODE_SERVFAIL,
   &msg->qinfo, id, flags, edns);
 }
 if(worker->stats.extended) {
  if(secure) worker->stats.ans_secure++;
  server_stats_insrcode(&worker->stats, repinfo->c->buffer);
 }
 return 1;
}
