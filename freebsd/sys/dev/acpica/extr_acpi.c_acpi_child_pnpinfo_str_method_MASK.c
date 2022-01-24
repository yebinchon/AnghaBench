#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct acpi_device {int /*<<< orphan*/  ad_handle; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_7__ {char* String; } ;
struct TYPE_6__ {int /*<<< orphan*/  String; } ;
struct TYPE_8__ {int Valid; TYPE_2__ HardwareId; TYPE_1__ UniqueId; } ;
typedef  TYPE_3__ ACPI_DEVICE_INFO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ACPI_VALID_HID ; 
 int ACPI_VALID_UID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 struct acpi_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*,...) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC6(device_t cbdev, device_t child, char *buf,
    size_t buflen)
{
    struct acpi_device *dinfo = FUNC3(child);
    ACPI_DEVICE_INFO *adinfo;

    if (FUNC0(FUNC1(dinfo->ad_handle, &adinfo))) {
	FUNC4(buf, buflen, "unknown");
	return (0);
    }

    FUNC4(buf, buflen, "_HID=%s _UID=%lu",
	(adinfo->Valid & ACPI_VALID_HID) ?
	adinfo->HardwareId.String : "none",
	(adinfo->Valid & ACPI_VALID_UID) ?
	FUNC5(adinfo->UniqueId.String, NULL, 10) : 0UL);
    FUNC2(adinfo);

    return (0);
}