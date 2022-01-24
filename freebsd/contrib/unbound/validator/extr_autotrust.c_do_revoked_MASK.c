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
struct autr_ta {scalar_t__ s; } ;

/* Variables and functions */
 scalar_t__ AUTR_STATE_MISSING ; 
 int /*<<< orphan*/  AUTR_STATE_REVOKED ; 
 scalar_t__ AUTR_STATE_VALID ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (struct autr_ta*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct module_env*,struct autr_ta*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct autr_ta*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC3(struct module_env* env, struct autr_ta* anchor, int* c)
{
	if(anchor->s == AUTR_STATE_VALID || anchor->s == AUTR_STATE_MISSING) {
                FUNC1(env, anchor, c, AUTR_STATE_REVOKED);
		FUNC2(anchor, VERB_ALGO, "old id, prior to revocation");
                FUNC0(anchor, 0);
		FUNC2(anchor, VERB_ALGO, "new id, after revocation");
	}
}