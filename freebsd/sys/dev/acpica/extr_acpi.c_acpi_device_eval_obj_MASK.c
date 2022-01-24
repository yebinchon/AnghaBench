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
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/  ACPI_STRING ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_OBJECT_LIST ;
typedef  int /*<<< orphan*/ * ACPI_HANDLE ;
typedef  int /*<<< orphan*/  ACPI_BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/ * ACPI_ROOT_OBJECT ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ACPI_STATUS
FUNC2(device_t bus, device_t dev, ACPI_STRING pathname,
    ACPI_OBJECT_LIST *parameters, ACPI_BUFFER *ret)
{
    ACPI_HANDLE h;

    if (dev == NULL)
	h = ACPI_ROOT_OBJECT;
    else if ((h = FUNC1(dev)) == NULL)
	return (AE_BAD_PARAMETER);
    return (FUNC0(h, pathname, parameters, ret));
}