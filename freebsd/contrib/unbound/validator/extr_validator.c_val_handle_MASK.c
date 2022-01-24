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
struct val_qstate {int state; } ;
struct val_env {int dummy; } ;
struct module_qstate {int dummy; } ;

/* Variables and functions */
#define  VAL_DLVLOOKUP_STATE 132 
#define  VAL_FINDKEY_STATE 131 
#define  VAL_FINISHED_STATE 130 
#define  VAL_INIT_STATE 129 
#define  VAL_VALIDATE_STATE 128 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct module_qstate*,struct val_qstate*,struct val_env*,int) ; 
 int FUNC2 (struct module_qstate*,struct val_qstate*,int) ; 
 int FUNC3 (struct module_qstate*,struct val_qstate*,struct val_env*,int) ; 
 int FUNC4 (struct module_qstate*,struct val_qstate*,struct val_env*,int) ; 
 int FUNC5 (struct module_qstate*,struct val_qstate*,struct val_env*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct module_qstate* qstate, struct val_qstate* vq, 
	struct val_env* ve, int id)
{
	int cont = 1;
	while(cont) {
		FUNC7(VERB_ALGO, "val handle processing q with state %s",
			FUNC6(vq->state));
		switch(vq->state) {
			case VAL_INIT_STATE:
				cont = FUNC4(qstate, vq, ve, id);
				break;
			case VAL_FINDKEY_STATE: 
				cont = FUNC2(qstate, vq, id);
				break;
			case VAL_VALIDATE_STATE: 
				cont = FUNC5(qstate, vq, ve, id);
				break;
			case VAL_FINISHED_STATE: 
				cont = FUNC3(qstate, vq, ve, id);
				break;
			case VAL_DLVLOOKUP_STATE: 
				cont = FUNC1(qstate, vq, ve, id);
				break;
			default:
				FUNC0("validator: invalid state %d",
					vq->state);
				cont = 0;
				break;
		}
	}
}