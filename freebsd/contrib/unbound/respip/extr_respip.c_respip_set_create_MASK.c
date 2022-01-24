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
struct respip_set {int /*<<< orphan*/  ip_tree; int /*<<< orphan*/  region; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct respip_set* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct respip_set*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

struct respip_set*
FUNC4(void)
{
	struct respip_set* set = FUNC1(1, sizeof(*set));
	if(!set)
		return NULL;
	set->region = FUNC3();
	if(!set->region) {
		FUNC2(set);
		return NULL;
	}
	FUNC0(&set->ip_tree);
	return set;
}