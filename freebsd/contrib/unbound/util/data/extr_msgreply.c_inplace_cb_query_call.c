
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct sockaddr_storage {int dummy; } ;
struct regional {int dummy; } ;
struct query_info {int dummy; } ;
struct module_qstate {int dummy; } ;
struct module_env {struct inplace_cb** inplace_cb_lists; } ;
struct inplace_cb {int cb_arg; int id; scalar_t__ cb; struct inplace_cb* next; } ;
typedef int socklen_t ;
typedef int (* inplace_cb_query_func_type ) (struct query_info*,int ,struct module_qstate*,struct sockaddr_storage*,int ,int *,size_t,struct regional*,int ,int ) ;


 int fptr_ok (int ) ;
 int fptr_whitelist_inplace_cb_query (int (*) (struct query_info*,int ,struct module_qstate*,struct sockaddr_storage*,int ,int *,size_t,struct regional*,int ,int )) ;
 size_t inplace_cb_query ;
 int stub1 (struct query_info*,int ,struct module_qstate*,struct sockaddr_storage*,int ,int *,size_t,struct regional*,int ,int ) ;

int inplace_cb_query_call(struct module_env* env, struct query_info* qinfo,
 uint16_t flags, struct sockaddr_storage* addr, socklen_t addrlen,
 uint8_t* zone, size_t zonelen, struct module_qstate* qstate,
 struct regional* region)
{
 struct inplace_cb* cb = env->inplace_cb_lists[inplace_cb_query];
 for(; cb; cb=cb->next) {
  fptr_ok(fptr_whitelist_inplace_cb_query(
   (inplace_cb_query_func_type*)cb->cb));
  (void)(*(inplace_cb_query_func_type*)cb->cb)(qinfo, flags,
   qstate, addr, addrlen, zone, zonelen, region,
   cb->id, cb->cb_arg);
 }
 return 1;
}
