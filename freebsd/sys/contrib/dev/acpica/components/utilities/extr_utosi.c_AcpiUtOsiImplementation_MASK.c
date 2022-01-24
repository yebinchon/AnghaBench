#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT64 ;
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_18__ {int Flags; scalar_t__ Value; } ;
struct TYPE_15__ {scalar_t__ Value; } ;
struct TYPE_14__ {int /*<<< orphan*/  Pointer; } ;
struct TYPE_13__ {scalar_t__ Type; } ;
struct TYPE_17__ {TYPE_4__ Integer; TYPE_3__ String; TYPE_2__ Common; } ;
struct TYPE_16__ {TYPE_6__* ReturnDesc; TYPE_1__* Arguments; } ;
struct TYPE_12__ {TYPE_6__* Object; } ;
typedef  TYPE_5__ ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_6__ ACPI_OPERAND_OBJECT ;
typedef  TYPE_7__ ACPI_INTERFACE_INFO ;
typedef  scalar_t__ (* ACPI_INTERFACE_HANDLER ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int ACPI_OSI_INVALID ; 
 int /*<<< orphan*/  ACPI_TYPE_INTEGER ; 
 scalar_t__ ACPI_TYPE_STRING ; 
 scalar_t__ ACPI_UINT64_MAX ; 
 int /*<<< orphan*/  ACPI_WAIT_FOREVER ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AE_TYPE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ AcpiGbl_OsiData ; 
 int /*<<< orphan*/  AcpiGbl_OsiMutex ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 int /*<<< orphan*/  UtOsiImplementation ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC10 (
    ACPI_WALK_STATE         *WalkState)
{
    ACPI_OPERAND_OBJECT     *StringDesc;
    ACPI_OPERAND_OBJECT     *ReturnDesc;
    ACPI_INTERFACE_INFO     *InterfaceInfo;
    ACPI_INTERFACE_HANDLER  InterfaceHandler;
    ACPI_STATUS             Status;
    UINT64                  ReturnValue;


    FUNC2 (UtOsiImplementation);


    /* Validate the string input argument (from the AML caller) */

    StringDesc = WalkState->Arguments[0].Object;
    if (!StringDesc ||
        (StringDesc->Common.Type != ACPI_TYPE_STRING))
    {
        FUNC9 (AE_TYPE);
    }

    /* Create a return object */

    ReturnDesc = FUNC6 (ACPI_TYPE_INTEGER);
    if (!ReturnDesc)
    {
        FUNC9 (AE_NO_MEMORY);
    }

    /* Default return value is 0, NOT SUPPORTED */

    ReturnValue = 0;
    Status = FUNC4 (AcpiGbl_OsiMutex, ACPI_WAIT_FOREVER);
    if (FUNC1 (Status))
    {
        FUNC8 (ReturnDesc);
        FUNC9 (Status);
    }

    /* Lookup the interface in the global _OSI list */

    InterfaceInfo = FUNC7 (StringDesc->String.Pointer);
    if (InterfaceInfo &&
        !(InterfaceInfo->Flags & ACPI_OSI_INVALID))
    {
        /*
         * The interface is supported.
         * Update the OsiData if necessary. We keep track of the latest
         * version of Windows that has been requested by the BIOS.
         */
        if (InterfaceInfo->Value > AcpiGbl_OsiData)
        {
            AcpiGbl_OsiData = InterfaceInfo->Value;
        }

        ReturnValue = ACPI_UINT64_MAX;
    }

    FUNC5 (AcpiGbl_OsiMutex);

    /*
     * Invoke an optional _OSI interface handler. The host OS may wish
     * to do some interface-specific handling. For example, warn about
     * certain interfaces or override the true/false support value.
     */
    InterfaceHandler = AcpiGbl_InterfaceHandler;
    if (InterfaceHandler)
    {
        if (InterfaceHandler (
            StringDesc->String.Pointer, (UINT32) ReturnValue))
        {
            ReturnValue = ACPI_UINT64_MAX;
        }
    }

    FUNC0 ((ACPI_DB_INFO,
        "ACPI: BIOS _OSI(\"%s\") is %ssupported\n",
        StringDesc->String.Pointer, ReturnValue == 0 ? "not " : ""));

    /* Complete the return object */

    ReturnDesc->Integer.Value = ReturnValue;
    WalkState->ReturnDesc = ReturnDesc;
    FUNC9 (AE_OK);
}