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
typedef  int UINT32 ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_IO_ADDRESS ;

/* Variables and functions */
 int /*<<< orphan*/  AE_OK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC3(ACPI_IO_ADDRESS InPort, UINT32 *Value, UINT32 Width)
{

    switch (Width) {
    case 8:
	*Value = FUNC0(InPort);
	break;
    case 16:
	*Value = FUNC1(InPort);
	break;
    case 32:
	*Value = FUNC2(InPort);
	break;
    }

    return (AE_OK);
}