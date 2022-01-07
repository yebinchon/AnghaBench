
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_9__ ;
typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_15__ ;
typedef struct TYPE_23__ TYPE_14__ ;
typedef struct TYPE_22__ TYPE_13__ ;
typedef struct TYPE_21__ TYPE_12__ ;
typedef struct TYPE_20__ TYPE_11__ ;
typedef struct TYPE_19__ TYPE_10__ ;


typedef int UINT8 ;
struct TYPE_33__ {int PblkLength; int PblkAddress; int ProcId; } ;
struct TYPE_32__ {int Node; int Class; } ;
struct TYPE_31__ {int ActualType; int Handle; } ;
struct TYPE_30__ {int Value; } ;
struct TYPE_29__ {int Value; } ;
struct TYPE_28__ {int Length; scalar_t__ Pointer; } ;
struct TYPE_27__ {int Length; scalar_t__ Pointer; } ;
struct TYPE_26__ {int Length; int * Pointer; } ;
struct TYPE_25__ {char* Pointer; int Length; } ;
struct TYPE_20__ {int ResourceOrder; int SystemLevel; } ;
struct TYPE_24__ {int Type; TYPE_11__ PowerResource; TYPE_9__ Processor; TYPE_7__ Reference; TYPE_5__ Integer; TYPE_2__ Buffer; TYPE_1__ String; } ;
struct TYPE_22__ {int Type; } ;
struct TYPE_21__ {int ResourceOrder; int SystemLevel; } ;
struct TYPE_19__ {int Length; int Address; int ProcId; } ;
struct TYPE_23__ {TYPE_13__ Common; TYPE_12__ PowerResource; TYPE_10__ Processor; TYPE_8__ Reference; TYPE_6__ Integer; TYPE_4__ Buffer; TYPE_3__ String; } ;
typedef int ACPI_STATUS ;
typedef scalar_t__ ACPI_SIZE ;
typedef TYPE_14__ ACPI_OPERAND_OBJECT ;
typedef TYPE_15__ ACPI_OBJECT ;


 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;

 scalar_t__ ACPI_ROUND_UP_TO_NATIVE_WORD (int ) ;






 int AE_INFO ;
 int AE_OK ;
 int AE_SUPPORT ;
 int AE_TYPE ;
 int AcpiNsGetType (int ) ;
 int AcpiUtGetTypeName (int) ;
 int UtCopyIsimpleToEsimple ;
 int memcpy (void*,void*,int ) ;
 int memset (TYPE_15__*,int ,int) ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static ACPI_STATUS
AcpiUtCopyIsimpleToEsimple (
    ACPI_OPERAND_OBJECT *InternalObject,
    ACPI_OBJECT *ExternalObject,
    UINT8 *DataSpace,
    ACPI_SIZE *BufferSpaceUsed)
{
    ACPI_STATUS Status = AE_OK;


    ACPI_FUNCTION_TRACE (UtCopyIsimpleToEsimple);


    *BufferSpaceUsed = 0;





    if (!InternalObject)
    {
        return_ACPI_STATUS (AE_OK);
    }



    memset (ExternalObject, 0, sizeof (ACPI_OBJECT));





    ExternalObject->Type = InternalObject->Common.Type;



    switch (InternalObject->Common.Type)
    {
    case 128:

        ExternalObject->String.Pointer = (char *) DataSpace;
        ExternalObject->String.Length = InternalObject->String.Length;
        *BufferSpaceUsed = ACPI_ROUND_UP_TO_NATIVE_WORD (
            (ACPI_SIZE) InternalObject->String.Length + 1);

        memcpy ((void *) DataSpace,
            (void *) InternalObject->String.Pointer,
            (ACPI_SIZE) InternalObject->String.Length + 1);
        break;

    case 133:

        ExternalObject->Buffer.Pointer = DataSpace;
        ExternalObject->Buffer.Length = InternalObject->Buffer.Length;
        *BufferSpaceUsed = ACPI_ROUND_UP_TO_NATIVE_WORD (
            InternalObject->String.Length);

        memcpy ((void *) DataSpace,
            (void *) InternalObject->Buffer.Pointer,
            InternalObject->Buffer.Length);
        break;

    case 132:

        ExternalObject->Integer.Value = InternalObject->Integer.Value;
        break;

    case 131:



        switch (InternalObject->Reference.Class)
        {
        case 134:




            ExternalObject->Reference.Handle =
                InternalObject->Reference.Node;
            ExternalObject->Reference.ActualType =
                AcpiNsGetType (InternalObject->Reference.Node);
            break;

        default:



            return_ACPI_STATUS (AE_TYPE);
        }
        break;

    case 129:

        ExternalObject->Processor.ProcId =
            InternalObject->Processor.ProcId;
        ExternalObject->Processor.PblkAddress =
            InternalObject->Processor.Address;
        ExternalObject->Processor.PblkLength =
            InternalObject->Processor.Length;
        break;

    case 130:

        ExternalObject->PowerResource.SystemLevel =
            InternalObject->PowerResource.SystemLevel;

        ExternalObject->PowerResource.ResourceOrder =
            InternalObject->PowerResource.ResourceOrder;
        break;

    default:



        ACPI_ERROR ((AE_INFO,
            "Unsupported object type, cannot convert to external object: %s",
            AcpiUtGetTypeName (InternalObject->Common.Type)));

        return_ACPI_STATUS (AE_SUPPORT);
    }

    return_ACPI_STATUS (Status);
}
