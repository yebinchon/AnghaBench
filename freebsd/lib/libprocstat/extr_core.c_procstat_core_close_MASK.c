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
struct procstat_core {scalar_t__ pc_magic; int /*<<< orphan*/  pc_fd; int /*<<< orphan*/  pc_elf; } ;

/* Variables and functions */
 scalar_t__ PROCSTAT_CORE_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct procstat_core*) ; 

void
FUNC4(struct procstat_core *core)
{

	FUNC0(core->pc_magic == PROCSTAT_CORE_MAGIC);

	FUNC2(core->pc_elf);
	FUNC1(core->pc_fd);
	FUNC3(core);
}