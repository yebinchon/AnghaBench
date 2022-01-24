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
struct module_qstate {struct config_strlist* errinf; int /*<<< orphan*/  region; TYPE_2__* env; } ;
struct config_strlist {struct config_strlist* next; int /*<<< orphan*/  str; } ;
struct TYPE_4__ {TYPE_1__* cfg; } ;
struct TYPE_3__ {int val_log_level; int /*<<< orphan*/  log_servfail; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 

void FUNC3(struct module_qstate* qstate, const char* str)
{
	struct config_strlist* p;
	if((qstate->env->cfg->val_log_level < 2 && !qstate->env->cfg->log_servfail) || !str)
		return;
	p = (struct config_strlist*)FUNC1(qstate->region, sizeof(*p));
	if(!p) {
		FUNC0("malloc failure in validator-error-info string");
		return;
	}
	p->next = NULL;
	p->str = FUNC2(qstate->region, str);
	if(!p->str) {
		FUNC0("malloc failure in validator-error-info string");
		return;
	}
	/* add at end */
	if(qstate->errinf) {
		struct config_strlist* q = qstate->errinf;
		while(q->next) 
			q = q->next;
		q->next = p;
	} else	qstate->errinf = p;
}