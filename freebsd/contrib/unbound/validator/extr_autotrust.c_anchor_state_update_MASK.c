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
struct module_env {int dummy; } ;
struct autr_ta {int s; int /*<<< orphan*/  fetched; int /*<<< orphan*/  revoked; int /*<<< orphan*/  last_change; } ;

/* Variables and functions */
#define  AUTR_STATE_ADDPEND 133 
#define  AUTR_STATE_MISSING 132 
#define  AUTR_STATE_REMOVED 131 
#define  AUTR_STATE_REVOKED 130 
#define  AUTR_STATE_START 129 
#define  AUTR_STATE_VALID 128 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (struct module_env*,struct autr_ta*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct module_env*,struct autr_ta*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct module_env*,struct autr_ta*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct module_env*,struct autr_ta*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct module_env*,struct autr_ta*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct module_env*,struct autr_ta*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct autr_ta*) ; 
 int /*<<< orphan*/  FUNC7 (struct module_env*,struct autr_ta*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct autr_ta*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC9(struct module_env* env, struct autr_ta* anchor, int* c)
{
	FUNC6(anchor);
	switch(anchor->s) {
	/* START */
	case AUTR_STATE_START:
		/* NewKey: ADDPEND */
		if (anchor->fetched)
			FUNC3(env, anchor, c);
		break;
	/* ADDPEND */
	case AUTR_STATE_ADDPEND:
		/* KeyRem: START */
		if (!anchor->fetched)
			FUNC2(env, anchor, c);
		/* AddTime: VALID */
		else	FUNC0(env, anchor, c);
		break;
	/* VALID */
	case AUTR_STATE_VALID:
		/* RevBit: REVOKED */
		if (anchor->revoked)
			FUNC5(env, anchor, c);
		/* KeyRem: MISSING */
		else if (!anchor->fetched)
			FUNC2(env, anchor, c);
		else if(!anchor->last_change) {
			FUNC8(anchor, VERB_ALGO, "first seen");
			FUNC7(env, anchor, c);
		}
		break;
	/* MISSING */
	case AUTR_STATE_MISSING:
		/* RevBit: REVOKED */
		if (anchor->revoked)
			FUNC5(env, anchor, c);
		/* KeyPres */
		else if (anchor->fetched)
			FUNC1(env, anchor, c);
		break;
	/* REVOKED */
	case AUTR_STATE_REVOKED:
		if (anchor->fetched)
			FUNC7(env, anchor, c);
		/* RemTime: REMOVED */
		else	FUNC4(env, anchor, c);
		break;
	/* REMOVED */
	case AUTR_STATE_REMOVED:
	default:
		break;
	}
}