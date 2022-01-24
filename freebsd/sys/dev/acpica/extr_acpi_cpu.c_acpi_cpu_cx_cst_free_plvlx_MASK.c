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
struct acpi_cx {int /*<<< orphan*/ * p_lvlx; int /*<<< orphan*/  res_rid; int /*<<< orphan*/  res_type; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(device_t cpu_dev, struct acpi_cx *cx_ptr)
{

	if (cx_ptr->p_lvlx == NULL)
		return;
	FUNC0(cpu_dev, cx_ptr->res_type, cx_ptr->res_rid,
	    cx_ptr->p_lvlx);
	cx_ptr->p_lvlx = NULL;
}