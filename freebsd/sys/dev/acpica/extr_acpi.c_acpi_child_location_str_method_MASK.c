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
struct acpi_device {scalar_t__ ad_handle; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,int*) ; 
 char* FUNC2 (scalar_t__) ; 
 struct acpi_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 

__attribute__((used)) static int
FUNC6(device_t cbdev, device_t child, char *buf,
    size_t buflen)
{
    struct acpi_device *dinfo = FUNC3(child);
    char buf2[32];
    int pxm;

    if (dinfo->ad_handle) {
        FUNC4(buf, buflen, "handle=%s", FUNC2(dinfo->ad_handle));
        if (FUNC0(FUNC1(dinfo->ad_handle, "_PXM", &pxm))) {
                FUNC4(buf2, 32, " _PXM=%d", pxm);
                FUNC5(buf, buf2, buflen);
        }
    } else {
        FUNC4(buf, buflen, "");
    }
    return (0);
}