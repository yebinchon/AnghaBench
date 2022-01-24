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
typedef  int UINT32 ;
typedef  size_t ACPI_OBJECT_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ACPI_NS_NEWSCOPE ; 
 int ACPI_NS_NORMAL ; 
 size_t ACPI_TYPE_LOCAL_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 scalar_t__* AcpiGbl_NsProperties ; 

UINT32
FUNC2 (
    ACPI_OBJECT_TYPE        Type)
{
    FUNC0 ();


    if (Type > ACPI_TYPE_LOCAL_MAX)
    {
        /* type code out of range  */

        FUNC1 ((AE_INFO, "Invalid Object Type 0x%X", Type));
        return (ACPI_NS_NORMAL);
    }

    return (((UINT32) AcpiGbl_NsProperties[Type]) & ACPI_NS_NEWSCOPE);
}