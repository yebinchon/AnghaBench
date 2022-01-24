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
struct iter_forwards {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iter_forwards*) ; 
 int /*<<< orphan*/  FUNC1 (struct iter_forwards*) ; 

void 
FUNC2(struct iter_forwards* fwd)
{
	if(!fwd) 
		return;
	FUNC1(fwd);
	FUNC0(fwd);
}