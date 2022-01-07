
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int UINT8 ;
typedef size_t UINT32 ;
struct TYPE_19__ {size_t Index; TYPE_6__* ThisTargetObj; TYPE_2__* DestObject; } ;
struct TYPE_21__ {TYPE_5__ Pkg; } ;
struct TYPE_18__ {int Flags; int Type; } ;
struct TYPE_17__ {int Count; } ;
struct TYPE_20__ {TYPE_4__ Common; TYPE_3__ Package; } ;
struct TYPE_15__ {int * Elements; } ;
struct TYPE_16__ {TYPE_1__ Package; } ;
typedef int ACPI_STATUS ;
typedef TYPE_6__ ACPI_OPERAND_OBJECT ;
typedef TYPE_7__ ACPI_GENERIC_STATE ;




 int ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_ENTRY () ;
 int AE_BAD_PARAMETER ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AcpiUtCopySimpleObject (TYPE_6__*,TYPE_6__*) ;
 TYPE_6__* AcpiUtCreateInternalObject (int ) ;
 TYPE_6__* AcpiUtCreatePackageObject (int ) ;
 int AcpiUtRemoveReference (TYPE_6__*) ;

__attribute__((used)) static ACPI_STATUS
AcpiUtCopyIelementToIelement (
    UINT8 ObjectType,
    ACPI_OPERAND_OBJECT *SourceObject,
    ACPI_GENERIC_STATE *State,
    void *Context)
{
    ACPI_STATUS Status = AE_OK;
    UINT32 ThisIndex;
    ACPI_OPERAND_OBJECT **ThisTargetPtr;
    ACPI_OPERAND_OBJECT *TargetObject;


    ACPI_FUNCTION_ENTRY ();


    ThisIndex = State->Pkg.Index;
    ThisTargetPtr = (ACPI_OPERAND_OBJECT **)
        &State->Pkg.DestObject->Package.Elements[ThisIndex];

    switch (ObjectType)
    {
    case 128:



        if (SourceObject)
        {



            TargetObject = AcpiUtCreateInternalObject (
                SourceObject->Common.Type);
            if (!TargetObject)
            {
                return (AE_NO_MEMORY);
            }

            Status = AcpiUtCopySimpleObject (SourceObject, TargetObject);
            if (ACPI_FAILURE (Status))
            {
                goto ErrorExit;
            }

            *ThisTargetPtr = TargetObject;
        }
        else
        {


            *ThisTargetPtr = ((void*)0);
        }
        break;

    case 129:




        TargetObject = AcpiUtCreatePackageObject (
            SourceObject->Package.Count);
        if (!TargetObject)
        {
            return (AE_NO_MEMORY);
        }

        TargetObject->Common.Flags = SourceObject->Common.Flags;



        State->Pkg.ThisTargetObj = TargetObject;



        *ThisTargetPtr = TargetObject;
        break;

    default:

        return (AE_BAD_PARAMETER);
    }

    return (Status);

ErrorExit:
    AcpiUtRemoveReference (TargetObject);
    return (Status);
}
