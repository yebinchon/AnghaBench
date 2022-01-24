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
struct acpi_cpu_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_8__ {int /*<<< orphan*/ * Pointer; int /*<<< orphan*/  Length; } ;
struct TYPE_6__ {int ProcId; } ;
struct TYPE_7__ {scalar_t__ Type; TYPE_1__ Processor; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  scalar_t__ ACPI_OBJECT_TYPE ;
typedef  TYPE_2__ ACPI_OBJECT ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;
typedef  TYPE_3__ ACPI_BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *) ; 
 scalar_t__ ACPI_TYPE_DEVICE ; 
 scalar_t__ ACPI_TYPE_PROCESSOR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
#define  CPUDEV_DEVICE_ID 128 
 int ENXIO ; 
 int /*<<< orphan*/  M_TEMP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int*) ; 
 scalar_t__ acpi_cpu_disabled ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  bootverbose ; 
 int /*<<< orphan*/ ** cpu_softc ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ ** FUNC17 (int,int /*<<< orphan*/ ,int) ; 
 int mp_maxid ; 

__attribute__((used)) static int
FUNC18(device_t dev)
{
    static char		   *cpudev_ids[] = { CPUDEV_DEVICE_ID, NULL };
    int			   acpi_id, cpu_id;
    ACPI_BUFFER		   buf;
    ACPI_HANDLE		   handle;
    ACPI_OBJECT		   *obj;
    ACPI_STATUS		   status;
    ACPI_OBJECT_TYPE	   type;

    if (FUNC6("cpu") || acpi_cpu_disabled)
	return (ENXIO);
    type = FUNC8(dev);
    if (type != ACPI_TYPE_PROCESSOR && type != ACPI_TYPE_DEVICE)
	return (ENXIO);
    if (type == ACPI_TYPE_DEVICE &&
	FUNC1(FUNC11(dev), dev, cpudev_ids, NULL) >= 0)
	return (ENXIO);

    handle = FUNC7(dev);
    if (cpu_softc == NULL)
	cpu_softc = FUNC17(sizeof(struct acpi_cpu_softc *) *
	    (mp_maxid + 1), M_TEMP /* XXX */, M_WAITOK | M_ZERO);

    if (type == ACPI_TYPE_PROCESSOR) {
	/* Get our Processor object. */
	buf.Pointer = NULL;
	buf.Length = ACPI_ALLOCATE_BUFFER;
	status = FUNC2(handle, NULL, NULL, &buf);
	if (FUNC0(status)) {
	    FUNC13(dev, "probe failed to get Processor obj - %s\n",
		FUNC3(status));
	    return (ENXIO);
	}
	obj = (ACPI_OBJECT *)buf.Pointer;
	if (obj->Type != ACPI_TYPE_PROCESSOR) {
	    FUNC13(dev, "Processor object has bad type %d\n",
		obj->Type);
	    FUNC4(obj);
	    return (ENXIO);
	}

	/*
	 * Find the processor associated with our unit.  We could use the
	 * ProcId as a key, however, some boxes do not have the same values
	 * in their Processor object as the ProcId values in the MADT.
	 */
	acpi_id = obj->Processor.ProcId;
	FUNC4(obj);
    } else {
	status = FUNC5(handle, "_UID", &acpi_id);
	if (FUNC0(status)) {
	    FUNC13(dev, "Device object has bad value - %s\n",
		FUNC3(status));
	    return (ENXIO);
	}
    }
    if (FUNC9(dev, &acpi_id, &cpu_id) != 0)
	return (ENXIO);

    /*
     * Check if we already probed this processor.  We scan the bus twice
     * so it's possible we've already seen this one.
     */
    if (cpu_softc[cpu_id] != NULL)
	return (ENXIO);

    /* Mark this processor as in-use and save our derived id for attach. */
    cpu_softc[cpu_id] = (void *)1;
    FUNC10(dev, (void*)(intptr_t)cpu_id);
    FUNC16(dev, "ACPI CPU");

    if (!bootverbose && FUNC12(dev) != 0) {
	    FUNC14(dev);
	    FUNC15(dev);
    }

    return (0);
}