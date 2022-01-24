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
struct acpi_bst {int state; scalar_t__ units; int dvol; int rate; int cap; int lfcap; int min; } ;
struct acpi_bif {int state; scalar_t__ units; int dvol; int rate; int cap; int lfcap; int min; } ;
struct acpi_battinfo {int state; scalar_t__ units; int dvol; int rate; int cap; int lfcap; int min; } ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/ * devclass_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct acpi_bst*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct acpi_bst*) ; 
 int ACPI_BATT_STAT_CHARGING ; 
 int ACPI_BATT_STAT_DISCHARG ; 
 int ACPI_BATT_UNKNOWN ; 
 scalar_t__ ACPI_BIF_UNITS_MA ; 
 int ENXIO ; 
 int /*<<< orphan*/  M_TEMP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_bst*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_bst*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_bst*) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct acpi_bst*,int /*<<< orphan*/ ) ; 
 struct acpi_bst* FUNC9 (int,int /*<<< orphan*/ ,int) ; 

int
FUNC10(device_t dev, struct acpi_battinfo *battinfo)
{
    int	batt_stat, devcount, dev_idx, error, i;
    int total_cap, total_lfcap, total_min, valid_rate, valid_units;
    devclass_t batt_dc;
    device_t batt_dev;
    struct acpi_bst *bst;
    struct acpi_bif *bif;
    struct acpi_battinfo *bi;

    /*
     * Get the battery devclass and max unit for battery devices.  If there
     * are none or error, return immediately.
     */
    batt_dc = FUNC5("battery");
    if (batt_dc == NULL)
	return (ENXIO);
    devcount = FUNC7(batt_dc);
    if (devcount == 0)
	return (ENXIO);

    /*
     * Allocate storage for all _BST data, their derived battinfo data,
     * and the current battery's _BIF data.
     */
    bst = FUNC9(devcount * sizeof(*bst), M_TEMP, M_WAITOK | M_ZERO);
    bi = FUNC9(devcount * sizeof(*bi), M_TEMP, M_WAITOK | M_ZERO);
    bif = FUNC9(sizeof(*bif), M_TEMP, M_WAITOK | M_ZERO);

    /*
     * Pass 1:  for each battery that is present and valid, get its status,
     * calculate percent capacity remaining, and sum all the current
     * discharge rates.
     */
    dev_idx = -1;
    batt_stat = valid_rate = valid_units = 0;
    total_cap = total_lfcap = 0;
    for (i = 0; i < devcount; i++) {
	/* Default info for every battery is "not present". */
	FUNC4(&bi[i]);

	/*
	 * Find the device.  Since devcount is in terms of max units, this
	 * may be a sparse array so skip devices that aren't present.
	 */
	batt_dev = FUNC6(batt_dc, i);
	if (batt_dev == NULL)
	    continue;

	/* If examining a specific battery and this is it, record its index. */
	if (dev != NULL && dev == batt_dev)
	    dev_idx = i;

	/*
	 * Be sure we can get various info from the battery.
	 */
	if (FUNC1(batt_dev, &bst[i]) != 0 ||
	    FUNC0(batt_dev, bif) != 0)
		continue;

	/* If a battery is not installed, we sometimes get strange values. */
	if (!FUNC3(&bst[i]) ||
	    !FUNC2(bif))
	    continue;

	/*
	 * Record current state.  If both charging and discharging are set,
	 * ignore the charging flag.
	 */
	valid_units++;
	if ((bst[i].state & ACPI_BATT_STAT_DISCHARG) != 0)
	    bst[i].state &= ~ACPI_BATT_STAT_CHARGING;
	batt_stat |= bst[i].state;
	bi[i].state = bst[i].state;

	/*
	 * If the battery info is in terms of mA, convert to mW by
	 * multiplying by the design voltage.  If the design voltage
	 * is 0 (due to some error reading the battery), skip this
	 * conversion.
	 */
	if (bif->units == ACPI_BIF_UNITS_MA && bif->dvol != 0 && dev == NULL) {
	    bst[i].rate = (bst[i].rate * bif->dvol) / 1000;
	    bst[i].cap = (bst[i].cap * bif->dvol) / 1000;
	    bif->lfcap = (bif->lfcap * bif->dvol) / 1000;
	}

	/*
	 * The calculation above may set bif->lfcap to zero. This was
	 * seen on a laptop with a broken battery. The result of the
	 * division was rounded to zero.
	 */
	if (!FUNC2(bif))
	    continue;

	/*
	 * Some laptops report the "design-capacity" instead of the
	 * "real-capacity" when the battery is fully charged.  That breaks
	 * the above arithmetic as it needs to be 100% maximum.
	 */
	if (bst[i].cap > bif->lfcap)
	    bst[i].cap = bif->lfcap;

	/* Calculate percent capacity remaining. */
	bi[i].cap = (100 * bst[i].cap) / bif->lfcap;

	/* If this battery is not present, don't use its capacity. */
	if (bi[i].cap != -1) {
	    total_cap += bst[i].cap;
	    total_lfcap += bif->lfcap;
	}

	/*
	 * On systems with more than one battery, they may get used
	 * sequentially, thus bst.rate may only signify the one currently
	 * in use.  For the remaining batteries, bst.rate will be zero,
	 * which makes it impossible to calculate the total remaining time.
	 * Therefore, we sum the bst.rate for batteries in the discharging
	 * state and use the sum to calculate the total remaining time.
	 */
	if (bst[i].rate != ACPI_BATT_UNKNOWN &&
	    (bst[i].state & ACPI_BATT_STAT_DISCHARG) != 0)
	    valid_rate += bst[i].rate;
    }

    /* If the caller asked for a device but we didn't find it, error. */
    if (dev != NULL && dev_idx == -1) {
	error = ENXIO;
	goto out;
    }

    /* Pass 2:  calculate capacity and remaining time for all batteries. */
    total_min = 0;
    for (i = 0; i < devcount; i++) {
	/*
	 * If any batteries are discharging, use the sum of the bst.rate
	 * values.  Otherwise, we are on AC power, and there is infinite
	 * time remaining for this battery until we go offline.
	 */
	if (valid_rate > 0)
	    bi[i].min = (60 * bst[i].cap) / valid_rate;
	else
	    bi[i].min = 0;
	total_min += bi[i].min;
    }

    /*
     * Return total battery percent and time remaining.  If there are
     * no valid batteries, report values as unknown.
     */
    if (valid_units > 0) {
	if (dev == NULL) {
	    battinfo->cap = (total_cap * 100) / total_lfcap;
	    battinfo->min = total_min;
	    battinfo->state = batt_stat;
	    battinfo->rate = valid_rate;
	} else {
	    battinfo->cap = bi[dev_idx].cap;
	    battinfo->min = bi[dev_idx].min;
	    battinfo->state = bi[dev_idx].state;
	    battinfo->rate = bst[dev_idx].rate;
	}

	/*
	 * If the queried battery has no discharge rate or is charging,
	 * report that we don't know the remaining time.
	 */
	if (valid_rate == 0 || (battinfo->state & ACPI_BATT_STAT_CHARGING))
	    battinfo->min = -1;
    } else
	FUNC4(battinfo);

    error = 0;

out:
    if (bi)
	FUNC8(bi, M_TEMP);
    if (bif)
	FUNC8(bif, M_TEMP);
    if (bst)
	FUNC8(bst, M_TEMP);
    return (error);
}