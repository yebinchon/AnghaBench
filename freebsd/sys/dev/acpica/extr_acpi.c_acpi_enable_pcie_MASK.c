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
struct TYPE_5__ {scalar_t__ PciSegment; int /*<<< orphan*/  EndBusNumber; int /*<<< orphan*/  StartBusNumber; int /*<<< orphan*/  Address; } ;
struct TYPE_4__ {int Length; } ;
typedef  int /*<<< orphan*/  ACPI_TABLE_MCFG ;
typedef  TYPE_1__ ACPI_TABLE_HEADER ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_2__ ACPI_MCFG_ALLOCATION ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_SIG_MCFG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void)
{
#if defined(__i386__) || defined(__amd64__)
	ACPI_TABLE_HEADER *hdr;
	ACPI_MCFG_ALLOCATION *alloc, *end;
	ACPI_STATUS status;

	status = FUNC1(ACPI_SIG_MCFG, 1, &hdr);
	if (FUNC0(status))
		return;

	end = (ACPI_MCFG_ALLOCATION *)((char *)hdr + hdr->Length);
	alloc = (ACPI_MCFG_ALLOCATION *)((ACPI_TABLE_MCFG *)hdr + 1);
	while (alloc < end) {
		if (alloc->PciSegment == 0) {
			FUNC2(alloc->Address, alloc->StartBusNumber,
			    alloc->EndBusNumber);
			return;
		}
		alloc++;
	}
#endif
}