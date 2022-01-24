#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  s; struct TYPE_5__* link; } ;
typedef  TYPE_1__ string_node ;
struct TYPE_6__ {int /*<<< orphan*/  phone; } ;
typedef  TYPE_2__ config_tree ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** sys_phone ; 

__attribute__((used)) static void
FUNC4(
	config_tree *ptree
	)
{
	size_t		i;
	string_node *	sn;

	i = 0;
	sn = FUNC1(ptree->phone);
	for (; sn != NULL; sn = sn->link) {
		/* need to leave array entry for NULL terminator */
		if (i < FUNC0(sys_phone) - 1) {
			sys_phone[i++] = FUNC2(sn->s);
			sys_phone[i] = NULL;
		} else {
			FUNC3(LOG_INFO,
				"phone: Number of phone entries exceeds %zu. Ignoring phone %s...",
				(FUNC0(sys_phone) - 1), sn->s);
		}
	}
}