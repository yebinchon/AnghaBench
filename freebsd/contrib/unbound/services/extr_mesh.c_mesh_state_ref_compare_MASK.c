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
struct mesh_state_ref {int /*<<< orphan*/  s; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC1(const void* ap, const void* bp)
{
	struct mesh_state_ref* a = (struct mesh_state_ref*)ap;
	struct mesh_state_ref* b = (struct mesh_state_ref*)bp;
	return FUNC0(a->s, b->s);
}