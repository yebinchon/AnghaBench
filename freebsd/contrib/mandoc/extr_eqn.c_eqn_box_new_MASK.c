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
struct eqn_box {int /*<<< orphan*/  expectargs; } ;

/* Variables and functions */
 int /*<<< orphan*/  UINT_MAX ; 
 struct eqn_box* FUNC0 (int,int) ; 

struct eqn_box *
FUNC1(void)
{
	struct eqn_box	*bp;

	bp = FUNC0(1, sizeof(*bp));
	bp->expectargs = UINT_MAX;
	return bp;
}