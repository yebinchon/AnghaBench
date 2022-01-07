
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct module_qstate {int query_flags; TYPE_3__* env; int region; scalar_t__ reply_origin; int qinfo; } ;
struct TYPE_5__ {int qclass; } ;
struct iter_qstate {int chase_flags; scalar_t__ dnssec_expected; TYPE_4__* response; TYPE_4__* deleg_msg; TYPE_1__ qchase; int dp; } ;
struct TYPE_8__ {int rep; int qinfo; } ;
struct TYPE_7__ {int (* detach_subs ) (struct module_qstate*) ;TYPE_2__* cfg; } ;
struct TYPE_6__ {scalar_t__ prefetch_key; } ;


 int BIT_CD ;
 int BIT_RD ;
 int QUERYTARGETS_STATE ;
 scalar_t__ VERB_ALGO ;
 int VERB_QUERY ;
 int final_state (struct iter_qstate*) ;
 int fptr_ok (int ) ;
 int fptr_whitelist_modenv_detach_subs (int (*) (struct module_qstate*)) ;
 int generate_dnskey_prefetch (struct module_qstate*,struct iter_qstate*,int) ;
 scalar_t__ iter_indicates_dnssec (TYPE_3__*,int ,TYPE_4__*,int ) ;
 int log_dns_msg (char*,int *,int ) ;
 int log_query_info (int ,char*,int *) ;
 int next_state (struct iter_qstate*,int ) ;
 int sock_list_insert (scalar_t__*,int *,int ,int ) ;
 int stub1 (struct module_qstate*) ;
 scalar_t__ verbosity ;

__attribute__((used)) static int
processInitRequest3(struct module_qstate* qstate, struct iter_qstate* iq,
 int id)
{
 log_query_info(VERB_QUERY, "resolving (init part 3): ",
  &qstate->qinfo);


 iq->dnssec_expected = iter_indicates_dnssec(qstate->env, iq->dp,
  iq->deleg_msg, iq->qchase.qclass);



 if(!(qstate->query_flags & BIT_RD) && iq->deleg_msg) {
  iq->response = iq->deleg_msg;
  if(verbosity >= VERB_ALGO && iq->response)
   log_dns_msg("no RD requested, using delegation msg",
    &iq->response->qinfo, iq->response->rep);
  if(qstate->reply_origin)
   sock_list_insert(&qstate->reply_origin, ((void*)0), 0, qstate->region);
  return final_state(iq);
 }


 iq->chase_flags &= ~BIT_RD;


 if(iq->dnssec_expected && qstate->env->cfg->prefetch_key &&
  !(qstate->query_flags&BIT_CD)) {
  generate_dnskey_prefetch(qstate, iq, id);
  fptr_ok(fptr_whitelist_modenv_detach_subs(
   qstate->env->detach_subs));
  (*qstate->env->detach_subs)(qstate);
 }


 return next_state(iq, QUERYTARGETS_STATE);
}
