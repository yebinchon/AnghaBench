
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct TYPE_3__ {int s6_addr; } ;
struct sockaddr_in6 {TYPE_1__ sin6_addr; int sin6_family; } ;
struct query_info {scalar_t__ qname; int qname_len; } ;
struct module_qstate {int curmod; int ** minfo; int * ext_state; int query_flags; TYPE_2__* env; int region; struct query_info qinfo; } ;
struct dns64_env {scalar_t__ prefix_net; int prefix_addr; } ;
typedef int socklen_t ;
typedef int sin6 ;
typedef enum module_ext_state { ____Placeholder_module_ext_state } module_ext_state ;
struct TYPE_4__ {int (* attach_sub ) (struct module_qstate*,struct query_info*,int ,int ,int ,struct module_qstate**) ;scalar_t__* modinfo; } ;


 int AF_INET6 ;
 int MAX_PTR_QNAME_IPV4 ;
 int VERB_ALGO ;
 scalar_t__ addr_in_common (struct sockaddr_storage*,int,int *,scalar_t__,int ) ;
 int extract_ipv4 (int ,scalar_t__) ;
 int fptr_ok (int ) ;
 int fptr_whitelist_modenv_attach_sub (int (*) (struct module_qstate*,struct query_info*,int ,int ,int ,struct module_qstate**)) ;
 int ipv4_to_ptr (int ,char*) ;
 int memset (struct sockaddr_in6*,int ,int) ;
 int module_error ;
 int module_state_initial ;
 int module_wait_module ;
 int module_wait_subquery ;
 int ptr_to_ipv6 (char*,int ) ;
 scalar_t__ regional_alloc (int ,int ) ;
 int stub1 (struct module_qstate*,struct query_info*,int ,int ,int ,struct module_qstate**) ;
 int verbose (int ,char*) ;

__attribute__((used)) static enum module_ext_state
handle_ipv6_ptr(struct module_qstate* qstate, int id)
{
    struct dns64_env* dns64_env = (struct dns64_env*)qstate->env->modinfo[id];
    struct module_qstate* subq = ((void*)0);
    struct query_info qinfo;
    struct sockaddr_in6 sin6;


    memset(&sin6, 0, sizeof(sin6));
    sin6.sin6_family = AF_INET6;
    if (!ptr_to_ipv6((char*)qstate->qinfo.qname, sin6.sin6_addr.s6_addr))
        return module_wait_module;





    if (addr_in_common((struct sockaddr_storage*)&sin6, 128,
                &dns64_env->prefix_addr, dns64_env->prefix_net,
                (socklen_t)sizeof(sin6)) != dns64_env->prefix_net)
        return module_wait_module;

    verbose(VERB_ALGO, "dns64: rewrite PTR record");






    qinfo = qstate->qinfo;
    if (!(qinfo.qname = regional_alloc(qstate->region, MAX_PTR_QNAME_IPV4)))
        return module_error;
    qinfo.qname_len = ipv4_to_ptr(extract_ipv4(sin6.sin6_addr.s6_addr,
                dns64_env->prefix_net), (char*)qinfo.qname);


    fptr_ok(fptr_whitelist_modenv_attach_sub(qstate->env->attach_sub));
    if(!(*qstate->env->attach_sub)(qstate, &qinfo, qstate->query_flags, 0, 0,
                &subq))
        return module_error;
    if (subq) {
        subq->curmod = id;
        subq->ext_state[id] = module_state_initial;
 subq->minfo[id] = ((void*)0);
    }

    return module_wait_subquery;
}
