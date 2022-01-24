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
struct module_qstate {TYPE_2__* env; scalar_t__ errinf; } ;
struct TYPE_6__ {int /*<<< orphan*/  data; int /*<<< orphan*/  hash; } ;
struct key_entry_key {TYPE_3__ entry; } ;
struct key_cache {int /*<<< orphan*/  slab; } ;
struct TYPE_5__ {TYPE_1__* cfg; } ;
struct TYPE_4__ {int val_log_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct module_qstate*) ; 
 struct key_entry_key* FUNC1 (struct key_entry_key*) ; 
 int /*<<< orphan*/  FUNC2 (struct key_entry_key*) ; 
 scalar_t__ FUNC3 (struct key_entry_key*) ; 
 int /*<<< orphan*/  FUNC4 (struct key_entry_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void 
FUNC6(struct key_cache* kcache, struct key_entry_key* kkey,
	struct module_qstate* qstate)
{
	struct key_entry_key* k = FUNC1(kkey);
	if(!k)
		return;
	if(FUNC3(k) && qstate->errinf &&
		qstate->env->cfg->val_log_level >= 2) {
		/* on malloc failure there is simply no reason string */
		FUNC4(k, FUNC0(qstate));
	}
	FUNC2(k);
	FUNC5(kcache->slab, k->entry.hash, &k->entry, 
		k->entry.data, NULL);
}