#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT64 ;
typedef  int UINT32 ;
struct TYPE_3__ {int /*<<< orphan*/  Function; int /*<<< orphan*/  Device; int /*<<< orphan*/  Bus; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_1__ ACPI_PCI_ID ;

/* Variables and functions */
 int /*<<< orphan*/  AE_NOT_EXIST ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AE_SUPPORT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

ACPI_STATUS
FUNC2 (ACPI_PCI_ID *PciId, UINT32 Register,
    UINT64 Value, UINT32 Width)
{

#ifdef __aarch64__
    /* ARM64TODO: Add pci support */
    return (AE_SUPPORT);
#else
    if (Width == 64)
	return (AE_SUPPORT);

    if (!FUNC0())
    	return (AE_NOT_EXIST);

    FUNC1(PciId->Bus, PciId->Device, PciId->Function, Register,
	Value, Width / 8);

    return (AE_OK);
#endif
}