#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct resource_list {int dummy; } ;
struct acpi_softc {int /*<<< orphan*/  acpi_resources_reserved; } ;
struct acpi_device {int /*<<< orphan*/  ad_handle; struct resource_list ad_rl; } ;
typedef  scalar_t__ rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int Flags; } ;
typedef  TYPE_1__ ACPI_DEVICE_INFO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int ACPI_PCI_ROOT_BRIDGE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ CONF1_ADDR_PORT ; 
 int EBUSY ; 
 int SYS_RES_IOPORT ; 
 int SYS_RES_IRQ ; 
 int SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 struct acpi_device* FUNC8 (int /*<<< orphan*/ ) ; 
 struct acpi_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcilink_ids ; 
 int /*<<< orphan*/  FUNC10 (struct resource_list*,int,int,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (struct resource_list*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct resource_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct resource_list*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct resource_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  sysres_ids ; 

__attribute__((used)) static int
FUNC15(device_t dev, device_t child, int type, int rid,
    rman_res_t start, rman_res_t count)
{
    struct acpi_softc *sc = FUNC9(dev);
    struct acpi_device *ad = FUNC8(child);
    struct resource_list *rl = &ad->ad_rl;
    ACPI_DEVICE_INFO *devinfo;
    rman_res_t end;
    int allow;

    /* Ignore IRQ resources for PCI link devices. */
    if (type == SYS_RES_IRQ &&
	FUNC0(dev, child, pcilink_ids, NULL) <= 0)
	return (0);

    /*
     * Ignore most resources for PCI root bridges.  Some BIOSes
     * incorrectly enumerate the memory ranges they decode as plain
     * memory resources instead of as ResourceProducer ranges.  Other
     * BIOSes incorrectly list system resource entries for I/O ranges
     * under the PCI bridge.  Do allow the one known-correct case on
     * x86 of a PCI bridge claiming the I/O ports used for PCI config
     * access.
     */
    if (type == SYS_RES_MEMORY || type == SYS_RES_IOPORT) {
	if (FUNC1(FUNC2(ad->ad_handle, &devinfo))) {
	    if ((devinfo->Flags & ACPI_PCI_ROOT_BRIDGE) != 0) {
#if defined(__i386__) || defined(__amd64__)
		allow = (type == SYS_RES_IOPORT && start == CONF1_ADDR_PORT);
#else
		allow = 0;
#endif
		if (!allow) {
		    FUNC3(devinfo);
		    return (0);
		}
	    }
	    FUNC3(devinfo);
	}
    }

#ifdef INTRNG
    /* map with default for now */
    if (type == SYS_RES_IRQ)
	start = (rman_res_t)acpi_map_intr(child, (u_int)start,
			acpi_get_handle(child));
#endif

    /* If the resource is already allocated, fail. */
    if (FUNC11(rl, type, rid))
	return (EBUSY);

    /* If the resource is already reserved, release it. */
    if (FUNC13(rl, type, rid))
	FUNC14(rl, dev, child, type, rid);

    /* Add the resource. */
    end = (start + count - 1);
    FUNC10(rl, type, rid, start, end, count);

    /* Don't reserve resources until the system resources are allocated. */
    if (!sc->acpi_resources_reserved)
	return (0);

    /* Don't reserve system resources. */
    if (FUNC0(dev, child, sysres_ids, NULL) <= 0)
	return (0);

    /*
     * Don't reserve IRQ resources.  There are many sticky things to
     * get right otherwise (e.g. IRQs for psm, atkbd, and HPET when
     * using legacy routing).
     */
    if (type == SYS_RES_IRQ)
	return (0);

    /*
     * Don't reserve resources for CPU devices.  Some of these
     * resources need to be allocated as shareable, but reservations
     * are always non-shareable.
     */
    if (FUNC7(child) == FUNC6("cpu"))
	return (0);

    /*
     * Reserve the resource.
     *
     * XXX: Ignores failure for now.  Failure here is probably a
     * BIOS/firmware bug?
     */
    FUNC12(rl, dev, child, type, &rid, start, end, count, 0);
    return (0);
}