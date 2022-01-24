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
 int /*<<< orphan*/  AcpiGbl_DbCommandComplete ; 
 int /*<<< orphan*/  AcpiGbl_DbCommandReady ; 
 scalar_t__ AcpiGbl_DbCommandSignalsInitialized ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void
FUNC1 (
    void)
{

    if (AcpiGbl_DbCommandSignalsInitialized)
    {
        FUNC0 (AcpiGbl_DbCommandReady);
        FUNC0 (AcpiGbl_DbCommandComplete);
    }
}