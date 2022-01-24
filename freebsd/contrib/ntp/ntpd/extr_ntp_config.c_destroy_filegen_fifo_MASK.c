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
struct TYPE_7__ {int /*<<< orphan*/  options; } ;
typedef  TYPE_1__ filegen_node ;
typedef  TYPE_1__ filegen_fifo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  link ; 

__attribute__((used)) static void
FUNC3(
	filegen_fifo *	fifo
	)
{
	filegen_node *	fg;

	if (fifo != NULL) {
		for (;;) {
			FUNC0(fg, *fifo, link);
			if (fg == NULL)
				break;
			FUNC1(fg->options);
			FUNC2(fg);
		}
		FUNC2(fifo);
	}
}