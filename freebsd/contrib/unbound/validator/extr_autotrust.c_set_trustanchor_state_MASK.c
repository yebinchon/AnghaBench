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
struct autr_ta {int /*<<< orphan*/  s; } ;
typedef  int /*<<< orphan*/  autr_state_type ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (struct module_env*,struct autr_ta*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct autr_ta*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct module_env* env, struct autr_ta* ta, int* changed,
	autr_state_type s)
{
	FUNC2(ta, VERB_ALGO, "update: %s to %s",
		FUNC1(ta->s), FUNC1(s));
	ta->s = s;
	FUNC0(env, ta, changed);
}