
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reply_info {int dummy; } ;
struct regional {int dummy; } ;
struct query_info {int dummy; } ;
struct module_qstate {struct edns_option* edns_opts_front_out; } ;
struct inplace_cb {int cb_arg; int id; scalar_t__ cb; struct inplace_cb* next; } ;
struct edns_option {int dummy; } ;
struct edns_data {struct edns_option* opt_list; } ;
struct comm_reply {int dummy; } ;
typedef int (* inplace_cb_reply_func_type ) (struct query_info*,struct module_qstate*,struct reply_info*,int,struct edns_data*,struct edns_option**,struct comm_reply*,struct regional*,int ,int ) ;
typedef enum inplace_cb_list_type { ____Placeholder_inplace_cb_list_type } inplace_cb_list_type ;


 int fptr_ok (int ) ;
 int fptr_whitelist_inplace_cb_reply_generic (int (*) (struct query_info*,struct module_qstate*,struct reply_info*,int,struct edns_data*,struct edns_option**,struct comm_reply*,struct regional*,int ,int ),int) ;
 int stub1 (struct query_info*,struct module_qstate*,struct reply_info*,int,struct edns_data*,struct edns_option**,struct comm_reply*,struct regional*,int ,int ) ;

__attribute__((used)) static int inplace_cb_reply_call_generic(
    struct inplace_cb* callback_list, enum inplace_cb_list_type type,
 struct query_info* qinfo, struct module_qstate* qstate,
 struct reply_info* rep, int rcode, struct edns_data* edns,
 struct comm_reply* repinfo, struct regional* region)
{
 struct inplace_cb* cb;
 struct edns_option* opt_list_out = ((void*)0);



 if(qstate)
  opt_list_out = qstate->edns_opts_front_out;
 for(cb=callback_list; cb; cb=cb->next) {
  fptr_ok(fptr_whitelist_inplace_cb_reply_generic(
   (inplace_cb_reply_func_type*)cb->cb, type));
  (void)(*(inplace_cb_reply_func_type*)cb->cb)(qinfo, qstate, rep,
   rcode, edns, &opt_list_out, repinfo, region, cb->id, cb->cb_arg);
 }
 edns->opt_list = opt_list_out;
 return 1;
}
