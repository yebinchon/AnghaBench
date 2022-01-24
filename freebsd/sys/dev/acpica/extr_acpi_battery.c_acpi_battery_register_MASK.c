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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_batteries_initted ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  battery ; 

int
FUNC3(device_t dev)
{
    int error;

    error = 0;
    FUNC0(battery);
    if (!acpi_batteries_initted)
	error = FUNC2();
    FUNC1(battery);
    return (error);
}