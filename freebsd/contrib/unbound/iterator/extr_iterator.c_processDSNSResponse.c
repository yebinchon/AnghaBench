
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int qclass; int qname_len; int qname; } ;
struct module_qstate {scalar_t__ return_rcode; int region; TYPE_2__* return_msg; TYPE_1__ qinfo; scalar_t__* minfo; } ;
struct iter_qstate {int dp; int state; } ;
struct TYPE_4__ {int rep; } ;


 scalar_t__ LDNS_RCODE_NOERROR ;
 int LDNS_RR_TYPE_NS ;
 int QUERYTARGETS_STATE ;
 int delegpt_from_message (TYPE_2__*,int ) ;
 int errinf (struct module_qstate*,char*) ;
 int log_err (char*) ;
 int reply_find_rrset (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
processDSNSResponse(struct module_qstate* qstate, int id,
 struct module_qstate* forq)
{
 struct iter_qstate* foriq = (struct iter_qstate*)forq->minfo[id];



 if(qstate->return_rcode != LDNS_RCODE_NOERROR)
  return;

 if(!reply_find_rrset(qstate->return_msg->rep, qstate->qinfo.qname,
  qstate->qinfo.qname_len, LDNS_RR_TYPE_NS,
  qstate->qinfo.qclass)){
  return;
 }


 foriq->state = QUERYTARGETS_STATE;
 foriq->dp = delegpt_from_message(qstate->return_msg, forq->region);
 if(!foriq->dp) {
  log_err("out of memory in dsns dp alloc");
  errinf(qstate, "malloc failure, in DS search");
  return;
 }

}
