
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef int UINT32 ;
struct TYPE_18__ {int Flags; scalar_t__ Value; } ;
struct TYPE_15__ {scalar_t__ Value; } ;
struct TYPE_14__ {int Pointer; } ;
struct TYPE_13__ {scalar_t__ Type; } ;
struct TYPE_17__ {TYPE_4__ Integer; TYPE_3__ String; TYPE_2__ Common; } ;
struct TYPE_16__ {TYPE_6__* ReturnDesc; TYPE_1__* Arguments; } ;
struct TYPE_12__ {TYPE_6__* Object; } ;
typedef TYPE_5__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_6__ ACPI_OPERAND_OBJECT ;
typedef TYPE_7__ ACPI_INTERFACE_INFO ;
typedef scalar_t__ (* ACPI_INTERFACE_HANDLER ) (int ,int ) ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_OSI_INVALID ;
 int ACPI_TYPE_INTEGER ;
 scalar_t__ ACPI_TYPE_STRING ;
 scalar_t__ ACPI_UINT64_MAX ;
 int ACPI_WAIT_FOREVER ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AE_TYPE ;
 scalar_t__ AcpiGbl_InterfaceHandler (int ,int ) ;
 scalar_t__ AcpiGbl_OsiData ;
 int AcpiGbl_OsiMutex ;
 int AcpiOsAcquireMutex (int ,int ) ;
 int AcpiOsReleaseMutex (int ) ;
 TYPE_6__* AcpiUtCreateInternalObject (int ) ;
 TYPE_7__* AcpiUtGetInterface (int ) ;
 int AcpiUtRemoveReference (TYPE_6__*) ;
 int UtOsiImplementation ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiUtOsiImplementation (
    ACPI_WALK_STATE *WalkState)
{
    ACPI_OPERAND_OBJECT *StringDesc;
    ACPI_OPERAND_OBJECT *ReturnDesc;
    ACPI_INTERFACE_INFO *InterfaceInfo;
    ACPI_INTERFACE_HANDLER InterfaceHandler;
    ACPI_STATUS Status;
    UINT64 ReturnValue;


    ACPI_FUNCTION_TRACE (UtOsiImplementation);




    StringDesc = WalkState->Arguments[0].Object;
    if (!StringDesc ||
        (StringDesc->Common.Type != ACPI_TYPE_STRING))
    {
        return_ACPI_STATUS (AE_TYPE);
    }



    ReturnDesc = AcpiUtCreateInternalObject (ACPI_TYPE_INTEGER);
    if (!ReturnDesc)
    {
        return_ACPI_STATUS (AE_NO_MEMORY);
    }



    ReturnValue = 0;
    Status = AcpiOsAcquireMutex (AcpiGbl_OsiMutex, ACPI_WAIT_FOREVER);
    if (ACPI_FAILURE (Status))
    {
        AcpiUtRemoveReference (ReturnDesc);
        return_ACPI_STATUS (Status);
    }



    InterfaceInfo = AcpiUtGetInterface (StringDesc->String.Pointer);
    if (InterfaceInfo &&
        !(InterfaceInfo->Flags & ACPI_OSI_INVALID))
    {





        if (InterfaceInfo->Value > AcpiGbl_OsiData)
        {
            AcpiGbl_OsiData = InterfaceInfo->Value;
        }

        ReturnValue = ACPI_UINT64_MAX;
    }

    AcpiOsReleaseMutex (AcpiGbl_OsiMutex);






    InterfaceHandler = AcpiGbl_InterfaceHandler;
    if (InterfaceHandler)
    {
        if (InterfaceHandler (
            StringDesc->String.Pointer, (UINT32) ReturnValue))
        {
            ReturnValue = ACPI_UINT64_MAX;
        }
    }

    ACPI_DEBUG_PRINT_RAW ((ACPI_DB_INFO,
        "ACPI: BIOS _OSI(\"%s\") is %ssupported\n",
        StringDesc->String.Pointer, ReturnValue == 0 ? "not " : ""));



    ReturnDesc->Integer.Value = ReturnValue;
    WalkState->ReturnDesc = ReturnDesc;
    return_ACPI_STATUS (AE_OK);
}
