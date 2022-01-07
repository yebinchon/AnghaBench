
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ qtype; } ;
struct module_qstate {scalar_t__ return_rcode; int query_flags; TYPE_1__* return_msg; TYPE_2__ qinfo; int env; int no_cache_store; struct dns64_qstate** minfo; int region; } ;
struct dns64_qstate {int started_no_cache_store; int state; } ;
struct TYPE_4__ {int rep; } ;


 int DNS64_SUBQUERY_FINISHED ;
 scalar_t__ LDNS_RCODE_NOERROR ;
 scalar_t__ LDNS_RR_TYPE_A ;
 scalar_t__ LDNS_RR_TYPE_PTR ;
 int VERB_ALGO ;
 int dns64_adjust_a (int,struct module_qstate*,struct module_qstate*) ;
 int dns64_adjust_ptr (struct module_qstate*,struct module_qstate*) ;
 int dns_cache_store (int ,TYPE_2__*,int ,int ,int ,int ,int *,int ) ;
 int log_assert (int) ;
 int log_err (char*) ;
 int log_query_info (int ,char*,TYPE_2__*) ;
 int memset (struct dns64_qstate*,int ,int) ;
 scalar_t__ regional_alloc (int ,int) ;

void
dns64_inform_super(struct module_qstate* qstate, int id,
  struct module_qstate* super)
{
 struct dns64_qstate* super_dq = (struct dns64_qstate*)super->minfo[id];
 log_query_info(VERB_ALGO, "dns64: inform_super, sub is",
         &qstate->qinfo);
 log_query_info(VERB_ALGO, "super is", &super->qinfo);





 if(!super_dq) {
  super_dq = (struct dns64_qstate*)regional_alloc(super->region,
   sizeof(*super_dq));
  super->minfo[id] = super_dq;
  memset(super_dq, 0, sizeof(*super_dq));
  super_dq->started_no_cache_store = super->no_cache_store;
 }
 super_dq->state = DNS64_SUBQUERY_FINISHED;


 if (qstate->return_rcode != LDNS_RCODE_NOERROR
     || !qstate->return_msg
     || !qstate->return_msg->rep) {
  return;
 }


 if (super->return_rcode != LDNS_RCODE_NOERROR)
  super->return_rcode = qstate->return_rcode;


 if (qstate->qinfo.qtype == LDNS_RR_TYPE_A) {
  dns64_adjust_a(id, super, qstate);
 } else {
  log_assert(qstate->qinfo.qtype == LDNS_RR_TYPE_PTR);
  dns64_adjust_ptr(qstate, super);
 }


 if ( (!super_dq || !super_dq->started_no_cache_store) &&
  !dns_cache_store(super->env, &super->qinfo, super->return_msg->rep,
  0, 0, 0, ((void*)0), super->query_flags))
  log_err("out of memory");
}
