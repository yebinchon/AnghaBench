#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  at_task; int /*<<< orphan*/  at_flag; } ;

/* Variables and functions */
 int ACPI_TASK_ENQUEUED ; 
 int ACPI_TASK_USED ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  PWAIT ; 
 int acpi_max_tasks ; 
 int /*<<< orphan*/  acpi_max_threads ; 
 scalar_t__ acpi_task_count ; 
 int /*<<< orphan*/  acpi_taskq ; 
 int acpi_taskq_started ; 
 TYPE_1__* acpi_tasks ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
    int i;

    acpi_taskq = FUNC2("acpi_task", M_NOWAIT,
	&taskqueue_thread_enqueue, &acpi_taskq);
    FUNC4(&acpi_taskq, acpi_max_threads, PWAIT, "acpi_task");
    if (acpi_task_count > 0) {
	if (bootverbose)
	    FUNC1("AcpiOsExecute: enqueue %d pending tasks\n",
		acpi_task_count);
	for (i = 0; i < acpi_max_tasks; i++)
	    if (FUNC0(&acpi_tasks[i].at_flag, ACPI_TASK_USED,
		ACPI_TASK_USED | ACPI_TASK_ENQUEUED))
		FUNC3(acpi_taskq, &acpi_tasks[i].at_task);
    }
    acpi_taskq_started = 1;
}