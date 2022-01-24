#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ Count; } ;
struct TYPE_6__ {int Valid; TYPE_1__ CompatibleIdList; } ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  int /*<<< orphan*/ * ACPI_HANDLE ;
typedef  TYPE_2__ ACPI_DEVICE_INFO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ACPI_VALID_CID ; 
 int ACPI_VALID_HID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOLEAN
FUNC3(ACPI_HANDLE h)
{
    ACPI_DEVICE_INFO	*devinfo;
    BOOLEAN		ret;

    if (h == NULL ||
	FUNC0(FUNC1(h, &devinfo)))
	return (FALSE);

    ret = FALSE;
    if ((devinfo->Valid & ACPI_VALID_HID) != 0)
	ret = TRUE;
    else if ((devinfo->Valid & ACPI_VALID_CID) != 0)
	if (devinfo->CompatibleIdList.Count > 0)
	    ret = TRUE;

    FUNC2(devinfo);
    return (ret);
}