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
 int /*<<< orphan*/  ASL_FILE_MAP_OUTPUT ; 
 int /*<<< orphan*/ * AslGbl_GpioList ; 
 int /*<<< orphan*/  AslGbl_MapfileFlag ; 
 int /*<<< orphan*/ * AslGbl_SerialList ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4 (
    void)
{

    /* Mapfile option enabled? */

    if (!AslGbl_MapfileFlag)
    {
        return;
    }

    if (!AslGbl_GpioList)
    {
        FUNC0 (ASL_FILE_MAP_OUTPUT,
            "\nNo GPIO devices found\n");
    }

    if (!AslGbl_SerialList)
    {
        FUNC0 (ASL_FILE_MAP_OUTPUT,
            "\nNo Serial devices found (I2C/SPI/UART)\n");
    }

    if (!AslGbl_GpioList && !AslGbl_SerialList)
    {
        return;
    }

    /* Headers */

    FUNC0 (ASL_FILE_MAP_OUTPUT, "\nResource Descriptor Connectivity Map\n");
    FUNC0 (ASL_FILE_MAP_OUTPUT,   "------------------------------------\n");

    /* Emit GPIO and Serial descriptors, then entire ACPI device tree */

    FUNC2 ();
    FUNC3 ();
    FUNC1 ();

    /* Clear the lists - no need to free memory here */

    AslGbl_SerialList = NULL;
    AslGbl_GpioList = NULL;
}