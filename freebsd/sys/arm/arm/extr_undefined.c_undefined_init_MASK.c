#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  uh_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MAX_COPROCS ; 
 int /*<<< orphan*/  gdb_trapper ; 
 TYPE_1__ gdb_uh ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * undefined_handlers ; 

void
FUNC2(void)
{
	int loop;

	/* Not actually necessary -- the initialiser is just NULL */
	for (loop = 0; loop < MAX_COPROCS; ++loop)
		FUNC0(&undefined_handlers[loop]);

	/* Install handler for GDB breakpoints */
	gdb_uh.uh_handler = gdb_trapper;
	FUNC1(0, &gdb_uh);
}