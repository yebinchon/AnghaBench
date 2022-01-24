#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t ;
struct TYPE_6__ {int /*<<< orphan*/  dname; int /*<<< orphan*/  rrset_class; int /*<<< orphan*/  type; } ;
struct ub_packed_rrset_key {TYPE_3__ rk; } ;
struct module_qstate {TYPE_2__* env; } ;
typedef  int /*<<< orphan*/  c ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_5__ {TYPE_1__* cfg; } ;
struct TYPE_4__ {int val_log_level; int /*<<< orphan*/  log_servfail; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_MAX_DOMAINLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct module_qstate*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,char*,char*) ; 

void FUNC6(struct module_qstate* qstate, struct ub_packed_rrset_key *rr)
{
	char buf[1024];
	char dname[LDNS_MAX_DOMAINLEN+1];
	char t[16], c[16];
	if((qstate->env->cfg->val_log_level < 2 && !qstate->env->cfg->log_servfail) || !rr)
		return;
	FUNC4(FUNC2(rr->rk.type), t, sizeof(t));
	FUNC3(FUNC2(rr->rk.rrset_class), c, sizeof(c));
	FUNC0(rr->rk.dname, dname);
	FUNC5(buf, sizeof(buf), "for <%s %s %s>", dname, t, c);
	FUNC1(qstate, buf);
}