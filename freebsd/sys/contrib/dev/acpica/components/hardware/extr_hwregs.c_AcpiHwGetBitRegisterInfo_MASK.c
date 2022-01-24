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
typedef  size_t UINT32 ;
typedef  int /*<<< orphan*/  ACPI_BIT_REGISTER_INFO ;

/* Variables and functions */
 size_t ACPI_BITREG_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/ * AcpiGbl_BitRegisterInfo ; 

ACPI_BIT_REGISTER_INFO *
FUNC2 (
    UINT32                  RegisterId)
{
    FUNC1 ();


    if (RegisterId > ACPI_BITREG_MAX)
    {
        FUNC0 ((AE_INFO, "Invalid BitRegister ID: 0x%X", RegisterId));
        return (NULL);
    }

    return (&AcpiGbl_BitRegisterInfo[RegisterId]);
}