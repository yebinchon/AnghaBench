
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {int qtype; int qname_len; int qname; } ;
struct module_qstate {int query_flags; TYPE_3__ qinfo; TYPE_2__* env; scalar_t__* minfo; } ;
struct TYPE_4__ {scalar_t__ qclass; } ;
struct iter_qstate {scalar_t__ num_current_queries; TYPE_1__ qchase; } ;
struct TYPE_5__ {int fwds; int hints; } ;


 int BIT_CD ;
 int FINISHED_STATE ;
 int INIT_REQUEST_STATE ;
 int LDNS_RCODE_REFUSED ;
 int LDNS_RCODE_SERVFAIL ;
 scalar_t__ LDNS_RR_CLASS_ANY ;
 int VERB_ALGO ;
 int errinf (struct module_qstate*,char*) ;
 int error_response (struct module_qstate*,int,int ) ;
 int generate_sub_request (int ,int ,int ,int,struct module_qstate*,int,struct iter_qstate*,int ,int ,struct module_qstate**,int) ;
 scalar_t__ iter_get_next_root (int ,int ,int*) ;
 int log_nametypeclass (int ,char*,int ,int ,int) ;
 int verbose (int ,char*) ;

__attribute__((used)) static int
processCollectClass(struct module_qstate* qstate, int id)
{
 struct iter_qstate* iq = (struct iter_qstate*)qstate->minfo[id];
 struct module_qstate* subq;




 if(iq->qchase.qclass == 0) {
  uint16_t c = 0;
  iq->qchase.qclass = LDNS_RR_CLASS_ANY;
  while(iter_get_next_root(qstate->env->hints,
   qstate->env->fwds, &c)) {

   log_nametypeclass(VERB_ALGO, "spawn collect query",
    qstate->qinfo.qname, qstate->qinfo.qtype, c);
   if(!generate_sub_request(qstate->qinfo.qname,
    qstate->qinfo.qname_len, qstate->qinfo.qtype,
    c, qstate, id, iq, INIT_REQUEST_STATE,
    FINISHED_STATE, &subq,
    (int)!(qstate->query_flags&BIT_CD))) {
    errinf(qstate, "could not generate class ANY"
     " lookup query");
    return error_response(qstate, id,
     LDNS_RCODE_SERVFAIL);
   }

   iq->num_current_queries ++;
   if(c == 0xffff)
    break;
   else c++;
  }

  if(iq->num_current_queries == 0) {
   verbose(VERB_ALGO, "No root hints or fwds, giving up "
    "on qclass ANY");
   return error_response(qstate, id, LDNS_RCODE_REFUSED);
  }

 }

 return 0;
}
