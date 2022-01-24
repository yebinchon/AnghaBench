#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int ch_slotnum; int ch_anafanum; } ;
typedef  TYPE_1__ ibnd_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int SPINES_MAX_NUM ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(ibnd_node_t * node)
{
	int retval;

	if (FUNC4(node) || FUNC1(node))
		retval = 3 * (node->ch_slotnum - 1) + node->ch_anafanum;
	else if (FUNC2(node) || FUNC3(node))
		retval = 2 * (node->ch_slotnum - 1) + node->ch_anafanum;
	else
		retval = node->ch_slotnum;

	if (retval > SPINES_MAX_NUM || retval < 1) {
		FUNC0("Internal error\n");
		return -1;
	}
	return retval;
}