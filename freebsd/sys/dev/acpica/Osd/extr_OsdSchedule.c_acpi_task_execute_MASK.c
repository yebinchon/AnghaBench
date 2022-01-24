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
struct acpi_task_ctx {int /*<<< orphan*/  at_flag; int /*<<< orphan*/  at_context; int /*<<< orphan*/  (* at_function ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int ACPI_TASK_ENQUEUED ; 
 int ACPI_TASK_USED ; 
 int /*<<< orphan*/  acpi_task_count ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void *context, int pending)
{
    struct acpi_task_ctx *at;

    at = (struct acpi_task_ctx *)context;
    at->at_function(at->at_context);
    FUNC0(&at->at_flag, ACPI_TASK_USED | ACPI_TASK_ENQUEUED);
    acpi_task_count--;
}