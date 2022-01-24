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
typedef  int /*<<< orphan*/  (* fifo_deleter ) (int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  any_node_fifo ;
typedef  int /*<<< orphan*/  any_node ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void*
FUNC3(
	void        *fifo,
	fifo_deleter func
	)
{
	any_node *	np  = NULL;
	any_node_fifo *	pf1 = fifo;

	if (pf1 != NULL) {
		if (!func)
			func = free;
		for (;;) {
			FUNC0(np, *pf1, link);
			if (np == NULL)
				break;
			(*func)(np);
		}
		FUNC1(pf1);
	}
	return NULL;
}