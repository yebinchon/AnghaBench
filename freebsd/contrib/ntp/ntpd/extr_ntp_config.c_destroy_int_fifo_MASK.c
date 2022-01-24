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
typedef  int /*<<< orphan*/  int_node ;
typedef  int /*<<< orphan*/  int_fifo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  link ; 

__attribute__((used)) static void
FUNC2(
	int_fifo *	fifo
	)
{
	int_node *	i_n;

	if (fifo != NULL) {
		for (;;) {
			FUNC0(i_n, *fifo, link);
			if (i_n == NULL)
				break;
			FUNC1(i_n);
		}
		FUNC1(fifo);
	}
}