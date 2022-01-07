
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct val_qstate {int chain_blacklist; } ;
struct query_info {size_t qname_len; int * local_alias; scalar_t__ qclass; scalar_t__ qtype; int * qname; } ;
struct module_qstate {int * ext_state; int region; int blacklist; TYPE_1__* env; scalar_t__* minfo; } ;
struct mesh_state {int dummy; } ;
struct TYPE_2__ {int (* attach_sub ) (struct module_qstate*,struct query_info*,scalar_t__,int ,int,struct module_qstate**) ;int (* add_sub ) (struct module_qstate*,struct query_info*,scalar_t__,int ,int,struct module_qstate**,struct mesh_state**) ;scalar_t__ (* detect_cycle ) (struct module_qstate*,struct query_info*,scalar_t__,int ,int) ;} ;


 scalar_t__ BIT_RD ;
 scalar_t__ LDNS_RR_TYPE_DLV ;
 int VERB_ALGO ;
 int fptr_ok (int ) ;
 int fptr_whitelist_modenv_add_sub (int (*) (struct module_qstate*,struct query_info*,scalar_t__,int ,int,struct module_qstate**,struct mesh_state**)) ;
 int fptr_whitelist_modenv_attach_sub (int (*) (struct module_qstate*,struct query_info*,scalar_t__,int ,int,struct module_qstate**)) ;
 int fptr_whitelist_modenv_detect_cycle (scalar_t__ (*) (struct module_qstate*,struct query_info*,scalar_t__,int ,int)) ;
 int log_err (char*) ;
 int log_query_info (int ,char*,struct query_info*) ;
 int module_wait_subquery ;
 int sock_list_merge (int *,int ,int ) ;
 scalar_t__ stub1 (struct module_qstate*,struct query_info*,scalar_t__,int ,int) ;
 int stub2 (struct module_qstate*,struct query_info*,scalar_t__,int ,int,struct module_qstate**,struct mesh_state**) ;
 int stub3 (struct module_qstate*,struct query_info*,scalar_t__,int ,int,struct module_qstate**) ;
 int verbose (int ,char*) ;

__attribute__((used)) static int
generate_request(struct module_qstate* qstate, int id, uint8_t* name,
 size_t namelen, uint16_t qtype, uint16_t qclass, uint16_t flags,
 struct module_qstate** newq, int detached)
{
 struct val_qstate* vq = (struct val_qstate*)qstate->minfo[id];
 struct query_info ask;
 int valrec;
 ask.qname = name;
 ask.qname_len = namelen;
 ask.qtype = qtype;
 ask.qclass = qclass;
 ask.local_alias = ((void*)0);
 log_query_info(VERB_ALGO, "generate request", &ask);


 if(qtype == LDNS_RR_TYPE_DLV)
  valrec = 0;
 else valrec = 1;

 fptr_ok(fptr_whitelist_modenv_detect_cycle(qstate->env->detect_cycle));
 if((*qstate->env->detect_cycle)(qstate, &ask,
  (uint16_t)(BIT_RD|flags), 0, valrec)) {
  verbose(VERB_ALGO, "Could not generate request: cycle detected");
  return 0;
 }

 if(detached) {
  struct mesh_state* sub = ((void*)0);
  fptr_ok(fptr_whitelist_modenv_add_sub(
   qstate->env->add_sub));
  if(!(*qstate->env->add_sub)(qstate, &ask,
   (uint16_t)(BIT_RD|flags), 0, valrec, newq, &sub)){
   log_err("Could not generate request: out of memory");
   return 0;
  }
 }
 else {
  fptr_ok(fptr_whitelist_modenv_attach_sub(
   qstate->env->attach_sub));
  if(!(*qstate->env->attach_sub)(qstate, &ask,
   (uint16_t)(BIT_RD|flags), 0, valrec, newq)){
   log_err("Could not generate request: out of memory");
   return 0;
  }
 }


 if(*newq) {

  sock_list_merge(&(*newq)->blacklist, (*newq)->region,
   vq->chain_blacklist);
 }
 qstate->ext_state[id] = module_wait_subquery;
 return 1;
}
