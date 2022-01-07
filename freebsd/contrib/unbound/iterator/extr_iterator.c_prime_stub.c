
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_5__ {int qclass; } ;
struct module_qstate {int * ext_state; TYPE_1__ qinfo; TYPE_2__* env; int region; scalar_t__* minfo; } ;
struct iter_qstate {int wait_priming_stub; TYPE_3__* dp; int dnssec_expected; scalar_t__ num_target_queries; int auth_zone_avoid; } ;
struct iter_hints_stub {scalar_t__ noprime; struct delegpt* dp; } ;
struct delegpt {int namelen; int name; } ;
struct TYPE_7__ {int name; scalar_t__ auth_dp; } ;
struct TYPE_6__ {int (* kill_sub ) (struct module_qstate*) ;int hints; } ;


 int LDNS_RCODE_SERVFAIL ;
 int LDNS_RR_TYPE_NS ;
 int PRIME_RESP_STATE ;
 int QUERYTARGETS_STATE ;
 int VERB_ALGO ;
 int VERB_DETAIL ;
 void* delegpt_copy (struct delegpt*,int ) ;
 int errinf (struct module_qstate*,char*) ;
 int error_response (struct module_qstate*,int,int ) ;
 int fptr_ok (int ) ;
 int fptr_whitelist_modenv_kill_sub (int (*) (struct module_qstate*)) ;
 int generate_sub_request (int ,int ,int ,int ,struct module_qstate*,int,struct iter_qstate*,int ,int ,struct module_qstate**,int ) ;
 struct iter_hints_stub* hints_lookup_stub (int ,int *,int ,TYPE_3__*) ;
 int iter_indicates_dnssec (TYPE_2__*,TYPE_3__*,int *,int ) ;
 int log_err (char*) ;
 int log_nametypeclass (int ,char*,int ,int ,int ) ;
 int module_wait_subquery ;
 scalar_t__ query_dname_compare (int ,int ) ;
 int stub1 (struct module_qstate*) ;
 int verbose (int ,char*) ;

__attribute__((used)) static int
prime_stub(struct module_qstate* qstate, struct iter_qstate* iq, int id,
 uint8_t* qname, uint16_t qclass)
{


 struct iter_hints_stub* stub;
 struct delegpt* stub_dp;
 struct module_qstate* subq;

 if(!qname) return 0;
 stub = hints_lookup_stub(qstate->env->hints, qname, qclass, iq->dp);

 if(!stub)
  return 0;
 stub_dp = stub->dp;


 if(!iq->auth_zone_avoid && iq->dp && iq->dp->auth_dp &&
  query_dname_compare(iq->dp->name, stub_dp->name) == 0)
  return 0;


 if(stub->noprime) {
  int r = 0;
  if(iq->dp == ((void*)0)) r = 2;


  iq->dp = delegpt_copy(stub_dp, qstate->region);
  if(!iq->dp) {
   log_err("out of memory priming stub");
   errinf(qstate, "malloc failure, priming stub");
   (void)error_response(qstate, id, LDNS_RCODE_SERVFAIL);
   return 1;
  }
  log_nametypeclass(VERB_DETAIL, "use stub", stub_dp->name,
   LDNS_RR_TYPE_NS, qclass);
  return r;
 }


 log_nametypeclass(VERB_DETAIL, "priming stub", stub_dp->name,
  LDNS_RR_TYPE_NS, qclass);



 if(!generate_sub_request(stub_dp->name, stub_dp->namelen,
  LDNS_RR_TYPE_NS, qclass, qstate, id, iq,
  QUERYTARGETS_STATE, PRIME_RESP_STATE, &subq, 0)) {
  verbose(VERB_ALGO, "could not prime stub");
  errinf(qstate, "could not generate lookup for stub prime");
  (void)error_response(qstate, id, LDNS_RCODE_SERVFAIL);
  return 1;
 }
 if(subq) {
  struct iter_qstate* subiq =
   (struct iter_qstate*)subq->minfo[id];



  subiq->dp = delegpt_copy(stub_dp, subq->region);
  if(!subiq->dp) {
   log_err("out of memory priming stub, copydp");
   fptr_ok(fptr_whitelist_modenv_kill_sub(
    qstate->env->kill_sub));
   (*qstate->env->kill_sub)(subq);
   errinf(qstate, "malloc failure, in stub prime");
   (void)error_response(qstate, id, LDNS_RCODE_SERVFAIL);
   return 1;
  }



  subiq->num_target_queries = 0;
  subiq->wait_priming_stub = 1;
  subiq->dnssec_expected = iter_indicates_dnssec(
   qstate->env, subiq->dp, ((void*)0), subq->qinfo.qclass);
 }


 qstate->ext_state[id] = module_wait_subquery;
 return 1;
}
