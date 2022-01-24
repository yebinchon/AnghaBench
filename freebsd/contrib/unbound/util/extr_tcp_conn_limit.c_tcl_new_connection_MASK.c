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
struct tcl_addr {scalar_t__ count; scalar_t__ limit; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int
FUNC2(struct tcl_addr* tcl)
{
	if(tcl) {
		int res = 1;
		FUNC0(&tcl->lock);
		if(tcl->count >= tcl->limit)
			res = 0;
		else
			tcl->count++;
		FUNC1(&tcl->lock);
		return res;
	}
	return 1;
}