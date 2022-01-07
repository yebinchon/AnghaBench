
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_qstate {int dummy; } ;
struct module_env {struct inplace_cb** inplace_cb_lists; } ;
struct inplace_cb {int cb_arg; int id; scalar_t__ cb; struct inplace_cb* next; } ;
typedef int (* inplace_cb_edns_back_parsed_func_type ) (struct module_qstate*,int ,int ) ;


 int fptr_ok (int ) ;
 int fptr_whitelist_inplace_cb_edns_back_parsed (int (*) (struct module_qstate*,int ,int )) ;
 size_t inplace_cb_edns_back_parsed ;
 int stub1 (struct module_qstate*,int ,int ) ;

int inplace_cb_edns_back_parsed_call(struct module_env* env,
 struct module_qstate* qstate)
{
 struct inplace_cb* cb =
  env->inplace_cb_lists[inplace_cb_edns_back_parsed];
 for(; cb; cb=cb->next) {
  fptr_ok(fptr_whitelist_inplace_cb_edns_back_parsed(
   (inplace_cb_edns_back_parsed_func_type*)cb->cb));
  (void)(*(inplace_cb_edns_back_parsed_func_type*)cb->cb)(qstate,
   cb->id, cb->cb_arg);
 }
 return 1;
}
