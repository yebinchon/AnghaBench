#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_storage {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  s6_addr; } ;
struct sockaddr_in6 {TYPE_1__ sin6_addr; int /*<<< orphan*/  sin6_family; } ;
struct query_info {scalar_t__ qname; int /*<<< orphan*/  qname_len; } ;
struct module_qstate {int curmod; int /*<<< orphan*/ ** minfo; int /*<<< orphan*/ * ext_state; int /*<<< orphan*/  query_flags; TYPE_2__* env; int /*<<< orphan*/  region; struct query_info qinfo; } ;
struct dns64_env {scalar_t__ prefix_net; int /*<<< orphan*/  prefix_addr; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  sin6 ;
typedef  enum module_ext_state { ____Placeholder_module_ext_state } module_ext_state ;
struct TYPE_4__ {int /*<<< orphan*/  (* attach_sub ) (struct module_qstate*,struct query_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct module_qstate**) ;scalar_t__* modinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  MAX_PTR_QNAME_IPV4 ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 scalar_t__ FUNC0 (struct sockaddr_storage*,int,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  (*) (struct module_qstate*,struct query_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct module_qstate**)) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_in6*,int /*<<< orphan*/ ,int) ; 
 int module_error ; 
 int /*<<< orphan*/  module_state_initial ; 
 int module_wait_module ; 
 int module_wait_subquery ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct module_qstate*,struct query_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct module_qstate**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static enum module_ext_state
FUNC10(struct module_qstate* qstate, int id)
{
    struct dns64_env* dns64_env = (struct dns64_env*)qstate->env->modinfo[id];
    struct module_qstate* subq = NULL;
    struct query_info qinfo;
    struct sockaddr_in6 sin6;

    /* Convert the PTR query string to an IPv6 address. */
    FUNC5(&sin6, 0, sizeof(sin6));
    sin6.sin6_family = AF_INET6;
    if (!FUNC6((char*)qstate->qinfo.qname, sin6.sin6_addr.s6_addr))
        return module_wait_module;  /* Let other module handle this. */

    /*
     * If this IPv6 address is not part of our DNS64 prefix, then we don't need
     * to do anything. Let another module handle the query.
     */
    if (FUNC0((struct sockaddr_storage*)&sin6, 128,
                &dns64_env->prefix_addr, dns64_env->prefix_net,
                (socklen_t)sizeof(sin6)) != dns64_env->prefix_net)
        return module_wait_module;

    FUNC9(VERB_ALGO, "dns64: rewrite PTR record");

    /*
     * Create a new PTR query info for the domain name corresponding to the IPv4
     * address corresponding to the IPv6 address corresponding to the original
     * PTR query domain name.
     */
    qinfo = qstate->qinfo;
    if (!(qinfo.qname = FUNC7(qstate->region, MAX_PTR_QNAME_IPV4)))
        return module_error;
    qinfo.qname_len = FUNC4(FUNC1(sin6.sin6_addr.s6_addr,
                dns64_env->prefix_net), (char*)qinfo.qname);

    /* Create the new sub-query. */
    FUNC2(FUNC3(qstate->env->attach_sub));
    if(!(*qstate->env->attach_sub)(qstate, &qinfo, qstate->query_flags, 0, 0,
                &subq))
        return module_error;
    if (subq) {
        subq->curmod = id;
        subq->ext_state[id] = module_state_initial;
	subq->minfo[id] = NULL;
    }

    return module_wait_subquery;
}