
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef int UINT8 ;
struct TYPE_22__ {int Object; int Class; } ;
struct TYPE_20__ {int Value; } ;
struct TYPE_19__ {int Flags; int Length; void* Pointer; } ;
struct TYPE_16__ {int Length; void* Pointer; } ;
struct TYPE_24__ {TYPE_7__ Reference; TYPE_5__ Integer; TYPE_4__ Buffer; TYPE_1__ String; } ;
struct TYPE_23__ {int Handle; } ;
struct TYPE_21__ {int Value; } ;
struct TYPE_18__ {int Length; int Pointer; } ;
struct TYPE_17__ {int Length; int Pointer; } ;
struct TYPE_15__ {int Type; TYPE_8__ Reference; TYPE_6__ Integer; TYPE_3__ Buffer; TYPE_2__ String; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_SIZE ;
typedef TYPE_9__ ACPI_OPERAND_OBJECT ;
typedef TYPE_10__ ACPI_OBJECT ;


 void* ACPI_ALLOCATE_ZEROED (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_REFCLASS_REFOF ;





 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AE_SUPPORT ;
 int AOPOBJ_DATA_VALID ;
 TYPE_9__* AcpiUtCreateInternalObject (int ) ;
 int AcpiUtGetTypeName (int) ;
 int AcpiUtRemoveReference (TYPE_9__*) ;
 int UtCopyEsimpleToIsimple ;
 int memcpy (void*,int ,int ) ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static ACPI_STATUS
AcpiUtCopyEsimpleToIsimple (
    ACPI_OBJECT *ExternalObject,
    ACPI_OPERAND_OBJECT **RetInternalObject)
{
    ACPI_OPERAND_OBJECT *InternalObject;


    ACPI_FUNCTION_TRACE (UtCopyEsimpleToIsimple);





    switch (ExternalObject->Type)
    {
    case 128:
    case 131:
    case 130:
    case 129:

        InternalObject = AcpiUtCreateInternalObject (
            (UINT8) ExternalObject->Type);
        if (!InternalObject)
        {
            return_ACPI_STATUS (AE_NO_MEMORY);
        }
        break;

    case 132:

        *RetInternalObject = ((void*)0);
        return_ACPI_STATUS (AE_OK);

    default:



        ACPI_ERROR ((AE_INFO,
            "Unsupported object type, cannot convert to internal object: %s",
            AcpiUtGetTypeName (ExternalObject->Type)));

        return_ACPI_STATUS (AE_SUPPORT);
    }




    switch (ExternalObject->Type)
    {
    case 128:

        InternalObject->String.Pointer =
            ACPI_ALLOCATE_ZEROED ((ACPI_SIZE)
                ExternalObject->String.Length + 1);

        if (!InternalObject->String.Pointer)
        {
            goto ErrorExit;
        }

        memcpy (InternalObject->String.Pointer,
            ExternalObject->String.Pointer,
            ExternalObject->String.Length);

        InternalObject->String.Length = ExternalObject->String.Length;
        break;

    case 131:

        InternalObject->Buffer.Pointer =
            ACPI_ALLOCATE_ZEROED (ExternalObject->Buffer.Length);
        if (!InternalObject->Buffer.Pointer)
        {
            goto ErrorExit;
        }

        memcpy (InternalObject->Buffer.Pointer,
            ExternalObject->Buffer.Pointer,
            ExternalObject->Buffer.Length);

        InternalObject->Buffer.Length = ExternalObject->Buffer.Length;



        InternalObject->Buffer.Flags |= AOPOBJ_DATA_VALID;
        break;

    case 130:

        InternalObject->Integer.Value = ExternalObject->Integer.Value;
        break;

    case 129:



        InternalObject->Reference.Class = ACPI_REFCLASS_REFOF;
        InternalObject->Reference.Object = ExternalObject->Reference.Handle;
        break;

    default:



        break;
    }

    *RetInternalObject = InternalObject;
    return_ACPI_STATUS (AE_OK);


ErrorExit:
    AcpiUtRemoveReference (InternalObject);
    return_ACPI_STATUS (AE_NO_MEMORY);
}
