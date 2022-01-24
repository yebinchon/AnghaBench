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
typedef  void* UINT32 ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_MTX_NAMESPACE ; 
 int /*<<< orphan*/  AE_OK ; 
 void* AcpiGbl_TraceDbgLayer ; 
 void* AcpiGbl_TraceDbgLevel ; 
 void* AcpiGbl_TraceFlags ; 
 char const* AcpiGbl_TraceMethodName ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC3 (
    const char              *Name,
    UINT32                  DebugLevel,
    UINT32                  DebugLayer,
    UINT32                  Flags)
{
    ACPI_STATUS             Status;


    Status = FUNC1 (ACPI_MTX_NAMESPACE);
    if (FUNC0 (Status))
    {
        return (Status);
    }

    AcpiGbl_TraceMethodName = Name;
    AcpiGbl_TraceFlags = Flags;
    AcpiGbl_TraceDbgLevel = DebugLevel;
    AcpiGbl_TraceDbgLayer = DebugLayer;
    Status = AE_OK;

    (void) FUNC2 (ACPI_MTX_NAMESPACE);
    return (Status);
}