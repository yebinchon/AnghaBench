
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
typedef int UINT32 ;
struct TYPE_7__ {int ReferenceCount; scalar_t__ Type; TYPE_2__* NextObject; } ;
struct TYPE_8__ {TYPE_1__ Common; } ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;
typedef int ACPI_OBJECT_TYPE ;


 int ACPI_FUNCTION_TRACE_STR (int ,int ) ;


 scalar_t__ ACPI_TYPE_LOCAL_EXTRA ;

 TYPE_2__* AcpiUtAllocateObjectDescDbg (char const*,int ,int ) ;
 int AcpiUtDeleteObjectDesc (TYPE_2__*) ;
 int AcpiUtGetTypeName (int) ;
 int UtCreateInternalObjectDbg ;
 int return_PTR (TYPE_2__*) ;

ACPI_OPERAND_OBJECT *
AcpiUtCreateInternalObjectDbg (
    const char *ModuleName,
    UINT32 LineNumber,
    UINT32 ComponentId,
    ACPI_OBJECT_TYPE Type)
{
    ACPI_OPERAND_OBJECT *Object;
    ACPI_OPERAND_OBJECT *SecondObject;


    ACPI_FUNCTION_TRACE_STR (UtCreateInternalObjectDbg,
        AcpiUtGetTypeName (Type));




    Object = AcpiUtAllocateObjectDescDbg (
        ModuleName, LineNumber, ComponentId);
    if (!Object)
    {
        return_PTR (((void*)0));
    }

    switch (Type)
    {
    case 128:
    case 130:
    case 129:



        SecondObject = AcpiUtAllocateObjectDescDbg (
            ModuleName, LineNumber, ComponentId);
        if (!SecondObject)
        {
            AcpiUtDeleteObjectDesc (Object);
            return_PTR (((void*)0));
        }

        SecondObject->Common.Type = ACPI_TYPE_LOCAL_EXTRA;
        SecondObject->Common.ReferenceCount = 1;



        Object->Common.NextObject = SecondObject;
        break;

    default:


        break;
    }



    Object->Common.Type = (UINT8) Type;



    Object->Common.ReferenceCount = 1;



    return_PTR (Object);
}
