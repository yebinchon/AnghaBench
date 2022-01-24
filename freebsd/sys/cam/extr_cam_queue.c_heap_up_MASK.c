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
typedef  int /*<<< orphan*/  cam_pinfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ **,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int,int) ; 

__attribute__((used)) static void
FUNC2(cam_pinfo **queue_array, int new_index)
{
	int child;
	int parent;

	child = new_index;

	while (child != 1) {

		parent = child >> 1;
		if (FUNC0(queue_array, parent, child) <= 0)
			break;
		FUNC1(queue_array, parent, child);
		child = parent;
	}
}