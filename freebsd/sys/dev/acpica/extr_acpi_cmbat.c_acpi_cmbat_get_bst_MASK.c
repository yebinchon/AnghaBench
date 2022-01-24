#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int state; int rate; int cap; int volt; } ;
struct acpi_cmbat_softc {int flags; TYPE_1__ bst; int /*<<< orphan*/  bst_lastupdated; } ;
typedef  void* device_t ;
struct TYPE_5__ {int /*<<< orphan*/ * Pointer; int /*<<< orphan*/  Length; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_OBJECT ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;
typedef  TYPE_2__ ACPI_BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 int ACPI_BATT_STAT_BST_MASK ; 
 int ACPI_BATT_STAT_CRITICAL ; 
 int ACPI_BATT_STAT_INVALID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  cmbat ; 
 struct acpi_cmbat_softc* FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (void*,char*) ; 

__attribute__((used)) static void
FUNC14(void *arg)
{
    struct acpi_cmbat_softc *sc;
    ACPI_STATUS	as;
    ACPI_OBJECT	*res;
    ACPI_HANDLE	h;
    ACPI_BUFFER	bst_buffer;
    device_t dev;

    FUNC2(cmbat);

    dev = arg;
    sc = FUNC12(dev);
    h = FUNC11(dev);
    bst_buffer.Pointer = NULL;
    bst_buffer.Length = ACPI_ALLOCATE_BUFFER;

    if (!FUNC8(&sc->bst_lastupdated))
	goto end;

    as = FUNC4(h, "_BST", NULL, &bst_buffer);
    if (FUNC0(as)) {
	FUNC3(dev, FUNC10(dev),
		    "error fetching current battery status -- %s\n",
		    FUNC5(as));
	goto end;
    }

    res = (ACPI_OBJECT *)bst_buffer.Pointer;
    if (!FUNC1(res, 4)) {
	FUNC3(dev, FUNC10(dev),
		    "battery status corrupted\n");
	goto end;
    }

    if (FUNC7(res, 0, &sc->bst.state) != 0)
	goto end;
    if (FUNC7(res, 1, &sc->bst.rate) != 0)
	goto end;
    if (FUNC7(res, 2, &sc->bst.cap) != 0)
	goto end;
    if (FUNC7(res, 3, &sc->bst.volt) != 0)
	goto end;
    FUNC9(&sc->bst_lastupdated);

    /* Clear out undefined/extended bits that might be set by hardware. */
    sc->bst.state &= ACPI_BATT_STAT_BST_MASK;
    if ((sc->bst.state & ACPI_BATT_STAT_INVALID) == ACPI_BATT_STAT_INVALID)
	FUNC3(dev, FUNC10(dev),
	    "battery reports simultaneous charging and discharging\n");

    /* XXX If all batteries are critical, perhaps we should suspend. */
    if (sc->bst.state & ACPI_BATT_STAT_CRITICAL) {
    	if ((sc->flags & ACPI_BATT_STAT_CRITICAL) == 0) {
	    sc->flags |= ACPI_BATT_STAT_CRITICAL;
	    FUNC13(dev, "critically low charge!\n");
	}
    } else
	sc->flags &= ~ACPI_BATT_STAT_CRITICAL;

end:
    if (bst_buffer.Pointer != NULL)
	FUNC6(bst_buffer.Pointer);
}