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
struct resource_list {int dummy; } ;
struct acpi_device {struct resource_list ad_rl; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_DRQ ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct acpi_device* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,int) ; 
 scalar_t__ FUNC6 (struct resource_list*,char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC7(device_t bus, device_t child)
{
    struct acpi_device	 *adev = FUNC4(child);
    struct resource_list *rl = &adev->ad_rl;
    int retval = 0;

    retval += FUNC2(bus, child);
    retval += FUNC6(rl, "port",  SYS_RES_IOPORT, "%#jx");
    retval += FUNC6(rl, "iomem", SYS_RES_MEMORY, "%#jx");
    retval += FUNC6(rl, "irq",   SYS_RES_IRQ,    "%jd");
    retval += FUNC6(rl, "drq",   SYS_RES_DRQ,    "%jd");
    if (FUNC3(child))
	retval += FUNC5(" flags %#x", FUNC3(child));
    retval += FUNC0(bus, child);
    retval += FUNC1(bus, child);

    return (retval);
}