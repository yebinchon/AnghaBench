
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct respip_qstate {int state; } ;
struct reply_info {int dummy; } ;
struct module_qstate {scalar_t__ return_rcode; TYPE_2__* return_msg; int region; TYPE_1__* env; int client_info; int qinfo; scalar_t__* minfo; } ;
struct TYPE_4__ {struct reply_info* rep; } ;
struct TYPE_3__ {int need_to_validate; } ;


 scalar_t__ LDNS_RCODE_NOERROR ;
 scalar_t__ LDNS_RCODE_SERVFAIL ;
 int RESPIP_SUBQUERY_FINISHED ;
 int log_assert (int) ;
 int respip_merge_cname (struct reply_info*,int *,struct reply_info*,int ,int ,struct reply_info**,int ) ;

void
respip_inform_super(struct module_qstate* qstate, int id,
 struct module_qstate* super)
{
 struct respip_qstate* rq = (struct respip_qstate*)super->minfo[id];
 struct reply_info* new_rep = ((void*)0);

 rq->state = RESPIP_SUBQUERY_FINISHED;



 log_assert(super->return_msg && super->return_msg->rep);





 if(!qstate->return_msg || !qstate->return_msg->rep ||
  qstate->return_rcode != LDNS_RCODE_NOERROR)
  goto fail;

 if(!respip_merge_cname(super->return_msg->rep, &qstate->qinfo,
  qstate->return_msg->rep, super->client_info,
  super->env->need_to_validate, &new_rep, super->region))
  goto fail;
 super->return_msg->rep = new_rep;
 return;

  fail:
 super->return_rcode = LDNS_RCODE_SERVFAIL;
 super->return_msg = ((void*)0);
 return;
}
