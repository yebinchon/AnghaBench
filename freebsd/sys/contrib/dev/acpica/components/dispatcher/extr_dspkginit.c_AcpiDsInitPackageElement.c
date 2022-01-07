
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_10__ {TYPE_4__** ThisTargetObj; } ;
struct TYPE_13__ {TYPE_2__ Pkg; } ;
struct TYPE_9__ {int Flags; } ;
struct TYPE_11__ {scalar_t__ Type; } ;
struct TYPE_12__ {TYPE_1__ Package; TYPE_3__ Common; } ;
typedef int ACPI_STATUS ;
typedef TYPE_4__ ACPI_OPERAND_OBJECT ;
typedef TYPE_5__ ACPI_GENERIC_STATE ;


 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_TYPE_LOCAL_REFERENCE ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 int AE_OK ;
 int AOPOBJ_DATA_VALID ;
 int AcpiDsResolvePackageElement (TYPE_4__**) ;
 int DsInitPackageElement ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiDsInitPackageElement (
    UINT8 ObjectType,
    ACPI_OPERAND_OBJECT *SourceObject,
    ACPI_GENERIC_STATE *State,
    void *Context)
{
    ACPI_OPERAND_OBJECT **ElementPtr;


    ACPI_FUNCTION_TRACE (DsInitPackageElement);


    if (!SourceObject)
    {
        return_ACPI_STATUS (AE_OK);
    }







    if (Context)
    {


        ElementPtr = (ACPI_OPERAND_OBJECT **) Context;
    }
    else
    {


        ElementPtr = State->Pkg.ThisTargetObj;
    }



    if (SourceObject->Common.Type == ACPI_TYPE_LOCAL_REFERENCE)
    {


        AcpiDsResolvePackageElement (ElementPtr);
    }
    else if (SourceObject->Common.Type == ACPI_TYPE_PACKAGE)
    {
        SourceObject->Package.Flags |= AOPOBJ_DATA_VALID;
    }

    return_ACPI_STATUS (AE_OK);
}
