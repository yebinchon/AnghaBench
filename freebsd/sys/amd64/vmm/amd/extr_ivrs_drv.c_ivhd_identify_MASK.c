#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  driver_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_9__ {int /*<<< orphan*/  Header; } ;
struct TYPE_7__ {scalar_t__ Length; } ;
struct TYPE_8__ {int /*<<< orphan*/  Info; TYPE_1__ Header; } ;
typedef  TYPE_2__ ACPI_TABLE_IVRS ;
typedef  int /*<<< orphan*/  ACPI_TABLE_HEADER ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_3__ ACPI_IVRS_HARDWARE ;

/* Variables and functions */
 scalar_t__ ACPI_DEV_BASE_ORDER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_SIG_IVRS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int ivhd_count ; 
 int /*<<< orphan*/  ivhd_count_iter ; 
 int /*<<< orphan*/ ** ivhd_devs ; 
 TYPE_3__* FUNC7 (int) ; 
 TYPE_3__** ivhd_hdrs ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC10 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,...) ; 

__attribute__((used)) static void
FUNC12(driver_t *driver, device_t parent)
{
	ACPI_TABLE_IVRS *ivrs;
	ACPI_IVRS_HARDWARE *ivhd;
	ACPI_STATUS status;
	int i, count = 0;
	uint32_t ivrs_ivinfo;

	if (FUNC5("ivhd"))
		return;

	status = FUNC1(ACPI_SIG_IVRS, 1, (ACPI_TABLE_HEADER **)&ivrs);
	if (FUNC0(status))
		return;

	if (ivrs->Header.Length == 0) {
		return;
	}

	ivrs_ivinfo = ivrs->Info;
	FUNC11("AMD-Vi: IVRS Info VAsize = %d PAsize = %d GVAsize = %d"
	       " flags:%b\n",
		FUNC4(ivrs_ivinfo, 21, 15), FUNC4(ivrs_ivinfo, 14, 8), 
		FUNC4(ivrs_ivinfo, 7, 5), FUNC4(ivrs_ivinfo, 22, 22),
		"\020\001EFRSup");

	FUNC9(ivhd_count_iter, NULL);
	if (!ivhd_count)
		return;

	for (i = 0; i < ivhd_count; i++) {
		ivhd = FUNC7(i);
		FUNC3(ivhd, ("ivhd%d is NULL\n", i));
		ivhd_hdrs[i] = ivhd;
	}

        /* 
	 * Scan for presence of legacy and non-legacy device type
	 * for same AMD-Vi device and override the old one.
	 */
	for (i = ivhd_count - 1 ; i > 0 ; i--){
       		if (FUNC8(&ivhd_hdrs[i-1]->Header, 
			&ivhd_hdrs[i]->Header)) {
			ivhd_hdrs[i-1] = ivhd_hdrs[i];
			ivhd_count--;
		}
       }	       

	ivhd_devs = FUNC10(sizeof(device_t) * ivhd_count, M_DEVBUF,
		M_WAITOK | M_ZERO);
	for (i = 0; i < ivhd_count; i++) {
		ivhd = ivhd_hdrs[i];
		FUNC3(ivhd, ("ivhd%d is NULL\n", i));

		/*
		 * Use a high order to ensure that this driver is probed after
		 * the Host-PCI bridge and the root PCI bus.
		 */
		ivhd_devs[i] = FUNC2(parent,
		    ACPI_DEV_BASE_ORDER + 10 * 10, "ivhd", i);

		/*
		 * XXX: In case device was not destroyed before, add will fail.
		 * locate the old device instance.
		 */
		if (ivhd_devs[i] == NULL) {
			ivhd_devs[i] = FUNC6(parent, "ivhd", i);
			if (ivhd_devs[i] == NULL) {
				FUNC11("AMD-Vi: cant find ivhd%d\n", i);
				break;
			}
		}
		count++;
	}

	/*
	 * Update device count in case failed to attach.
	 */
	ivhd_count = count;
}