#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct val_qstate {int /*<<< orphan*/  state; } ;
struct module_qstate {struct val_qstate** minfo; int /*<<< orphan*/  region; } ;

/* Variables and functions */
 int /*<<< orphan*/  VAL_INIT_STATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct val_qstate*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct val_qstate* FUNC3 (struct module_qstate*,struct val_qstate*) ; 

__attribute__((used)) static struct val_qstate*
FUNC4(struct module_qstate* qstate, int id)
{
	struct val_qstate* vq = (struct val_qstate*)FUNC2(
		qstate->region, sizeof(*vq));
	FUNC0(!qstate->minfo[id]);
	if(!vq)
		return NULL;
	FUNC1(vq, 0, sizeof(*vq));
	qstate->minfo[id] = vq;
	vq->state = VAL_INIT_STATE;
	return FUNC3(qstate, vq);
}