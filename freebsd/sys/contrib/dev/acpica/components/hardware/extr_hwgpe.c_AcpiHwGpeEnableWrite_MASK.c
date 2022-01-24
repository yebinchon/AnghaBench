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
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_3__ {int /*<<< orphan*/  EnableAddress; int /*<<< orphan*/  EnableMask; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_1__ ACPI_GPE_REGISTER_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ACPI_STATUS
FUNC1 (
    UINT8                   EnableMask,
    ACPI_GPE_REGISTER_INFO  *GpeRegisterInfo)
{
    ACPI_STATUS             Status;


    GpeRegisterInfo->EnableMask = EnableMask;

    Status = FUNC0 (EnableMask, &GpeRegisterInfo->EnableAddress);
    return (Status);
}