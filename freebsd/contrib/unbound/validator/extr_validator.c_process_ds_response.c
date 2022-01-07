
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct val_qstate {scalar_t__ restart_count; void* state; struct key_entry_key* key_entry; int * chain_blacklist; int * empty_DS_name; int ds_rrset; int empty_DS_len; } ;
struct sock_list {int dummy; } ;
struct query_info {int qname; int qname_len; } ;
struct module_qstate {int * errinf; int region; } ;
struct key_entry_key {int dummy; } ;
struct dns_msg {int dummy; } ;


 scalar_t__ VAL_MAX_RESTART_COUNT ;
 void* VAL_VALIDATE_STATE ;
 int ds_response_to_ke (struct module_qstate*,struct val_qstate*,int,int,struct dns_msg*,struct query_info*,struct key_entry_key**) ;
 int errinf_dname (struct module_qstate*,char*,int ) ;
 int errinf_origin (struct module_qstate*,struct sock_list*) ;
 int key_entry_get_rrset (struct key_entry_key*,int ) ;
 scalar_t__ key_entry_isbad (struct key_entry_key*) ;
 scalar_t__ key_entry_isgood (struct key_entry_key*) ;
 int log_err (char*) ;
 int * regional_alloc_init (int ,int ,int ) ;
 int val_blacklist (int **,int ,struct sock_list*,int) ;

__attribute__((used)) static void
process_ds_response(struct module_qstate* qstate, struct val_qstate* vq,
 int id, int rcode, struct dns_msg* msg, struct query_info* qinfo,
 struct sock_list* origin)
{
 struct key_entry_key* dske = ((void*)0);
 uint8_t* olds = vq->empty_DS_name;
 vq->empty_DS_name = ((void*)0);
 if(!ds_response_to_ke(qstate, vq, id, rcode, msg, qinfo, &dske)) {
   log_err("malloc failure in process_ds_response");
   vq->key_entry = ((void*)0);
   vq->state = VAL_VALIDATE_STATE;
   return;
 }
 if(dske == ((void*)0)) {
  vq->empty_DS_name = regional_alloc_init(qstate->region,
   qinfo->qname, qinfo->qname_len);
  if(!vq->empty_DS_name) {
   log_err("malloc failure in empty_DS_name");
   vq->key_entry = ((void*)0);
   vq->state = VAL_VALIDATE_STATE;
   return;
  }
  vq->empty_DS_len = qinfo->qname_len;
  vq->chain_blacklist = ((void*)0);


 } else if(key_entry_isgood(dske)) {
  vq->ds_rrset = key_entry_get_rrset(dske, qstate->region);
  if(!vq->ds_rrset) {
   log_err("malloc failure in process DS");
   vq->key_entry = ((void*)0);
   vq->state = VAL_VALIDATE_STATE;
   return;
  }
  vq->chain_blacklist = ((void*)0);

 } else if(key_entry_isbad(dske)
  && vq->restart_count < VAL_MAX_RESTART_COUNT) {
  vq->empty_DS_name = olds;
  val_blacklist(&vq->chain_blacklist, qstate->region, origin, 1);
  qstate->errinf = ((void*)0);
  vq->restart_count++;
 } else {
  if(key_entry_isbad(dske)) {
   errinf_origin(qstate, origin);
   errinf_dname(qstate, "for DS", qinfo->qname);
  }



  vq->key_entry = dske;

  vq->state = VAL_VALIDATE_STATE;
 }
}
