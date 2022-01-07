
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int rrset_class; int type; int dname_len; int dname; } ;
struct ub_packed_rrset_key {TYPE_4__ rk; } ;
struct reply_info {size_t an_numrrsets; size_t ns_numrrsets; size_t rrset_count; struct ub_packed_rrset_key** rrsets; } ;
struct TYPE_7__ {scalar_t__ qtype; scalar_t__ qclass; int qname; } ;
struct module_qstate {int query_flags; TYPE_3__ qinfo; TYPE_1__* env; } ;
struct iter_qstate {scalar_t__ depth; int dp; TYPE_2__* response; } ;
struct iter_env {scalar_t__ max_dependency_depth; } ;
struct TYPE_6__ {struct reply_info* rep; } ;
struct TYPE_5__ {scalar_t__* modinfo; } ;


 int BIT_CD ;
 int BIT_RD ;
 int FINISHED_STATE ;
 int INIT_REQUEST_STATE ;
 scalar_t__ LDNS_RR_TYPE_A ;
 scalar_t__ LDNS_RR_TYPE_AAAA ;
 int VERB_ALGO ;
 int generate_sub_request (int ,int ,scalar_t__,scalar_t__,struct module_qstate*,int,struct iter_qstate*,int ,int ,struct module_qstate**,int) ;
 int log_assert (int ) ;
 int log_nametypeclass (int ,char*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ query_dname_compare (int ,int ) ;
 int verbose (int ,char*) ;

__attribute__((used)) static void
generate_a_aaaa_check(struct module_qstate* qstate, struct iter_qstate* iq,
 int id)
{
 struct iter_env* ie = (struct iter_env*)qstate->env->modinfo[id];
 struct module_qstate* subq;
 size_t i;
 struct reply_info* rep = iq->response->rep;
 struct ub_packed_rrset_key* s;
 log_assert(iq->dp);

 if(iq->depth == ie->max_dependency_depth)
  return;


 for(i=rep->an_numrrsets+rep->ns_numrrsets; i<rep->rrset_count; i++) {
  s = rep->rrsets[i];


  if( !(ntohs(s->rk.type)==LDNS_RR_TYPE_A ||
   ntohs(s->rk.type)==LDNS_RR_TYPE_AAAA)) {
   continue;
  }

  if(qstate->qinfo.qtype == ntohs(s->rk.type) &&
   qstate->qinfo.qclass == ntohs(s->rk.rrset_class) &&
   query_dname_compare(qstate->qinfo.qname,
    s->rk.dname)==0 &&
   (qstate->query_flags&BIT_RD) &&
   !(qstate->query_flags&BIT_CD))
   continue;


  log_nametypeclass(VERB_ALGO, "schedule addr fetch",
   s->rk.dname, ntohs(s->rk.type),
   ntohs(s->rk.rrset_class));
  if(!generate_sub_request(s->rk.dname, s->rk.dname_len,
   ntohs(s->rk.type), ntohs(s->rk.rrset_class),
   qstate, id, iq,
   INIT_REQUEST_STATE, FINISHED_STATE, &subq, 1)) {
   verbose(VERB_ALGO, "could not generate addr check");
   return;
  }

 }
}
