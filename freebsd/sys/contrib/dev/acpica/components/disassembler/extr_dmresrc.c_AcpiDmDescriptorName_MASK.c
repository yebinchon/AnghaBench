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

/* Variables and functions */
 scalar_t__ ACPI_DEFAULT_RESNAME ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ ResourceName ; 

void
FUNC1 (
    void)
{

    if (ResourceName == ACPI_DEFAULT_RESNAME)
    {
        return;
    }

    FUNC0 ("%4.4s", (char *) &ResourceName);
}