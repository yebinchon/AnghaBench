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
typedef  int /*<<< orphan*/  subqi ;
struct ub_packed_rrset_key {int dummy; } ;
struct query_info {int /*<<< orphan*/  qclass; int /*<<< orphan*/  qtype; int /*<<< orphan*/  qname; int /*<<< orphan*/  qname_len; } ;
struct TYPE_3__ {int /*<<< orphan*/  qclass; int /*<<< orphan*/  qtype; } ;
struct module_qstate {TYPE_2__* env; TYPE_1__ qinfo; } ;
struct TYPE_4__ {int (* attach_sub ) (struct module_qstate*,struct query_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct module_qstate**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_RD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (struct module_qstate*,struct query_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct module_qstate**)) ; 
 int /*<<< orphan*/  FUNC2 (struct ub_packed_rrset_key*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct query_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct module_qstate*,struct query_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct module_qstate**) ; 

__attribute__((used)) static int
FUNC5(struct module_qstate* qstate,
	struct ub_packed_rrset_key* alias_rrset)
{
	struct module_qstate* subq = NULL;
	struct query_info subqi;

	FUNC3(&subqi, 0, sizeof(subqi));
	FUNC2(alias_rrset, &subqi.qname, &subqi.qname_len);
	if(!subqi.qname)
		return 0;    /* unexpected: not a valid CNAME RDATA */
	subqi.qtype = qstate->qinfo.qtype;
	subqi.qclass = qstate->qinfo.qclass;
	FUNC0(FUNC1(qstate->env->attach_sub));
	return (*qstate->env->attach_sub)(qstate, &subqi, BIT_RD, 0, 0, &subq);
}