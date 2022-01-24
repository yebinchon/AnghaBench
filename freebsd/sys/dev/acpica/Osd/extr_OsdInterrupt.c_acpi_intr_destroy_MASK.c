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
struct acpi_intr {int /*<<< orphan*/  ai_rid; int /*<<< orphan*/ * ai_irq; int /*<<< orphan*/ * ai_handle; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_ACPIINTR ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_intr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(device_t dev, struct acpi_intr *ai)
{

	if (ai->ai_handle != NULL)
		FUNC2(dev, ai->ai_irq, ai->ai_handle);
	if (ai->ai_irq != NULL)
		FUNC1(dev, SYS_RES_IRQ, ai->ai_rid, ai->ai_irq);
	FUNC0(dev, SYS_RES_IRQ, ai->ai_rid);
	FUNC3(ai, M_ACPIINTR);
}