#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  p_setname; } ;
typedef  TYPE_1__ perm_set_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(const void *arg1, const void *arg2)
{
	const perm_set_t *node1 = (const perm_set_t *)arg1;
	const perm_set_t *node2 = (const perm_set_t *)arg2;
	int val;

	val = FUNC1(node1->p_setname, node2->p_setname);

	return (FUNC0(val));
}