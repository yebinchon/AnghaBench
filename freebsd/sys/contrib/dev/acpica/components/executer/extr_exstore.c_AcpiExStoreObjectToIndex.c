
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_16__ {int TargetType; size_t Value; TYPE_5__* Object; TYPE_5__** Where; int Class; } ;
struct TYPE_15__ {int * Pointer; } ;
struct TYPE_14__ {int Value; } ;
struct TYPE_13__ {int Type; int ReferenceCount; } ;
struct TYPE_17__ {TYPE_4__ Reference; TYPE_3__ Buffer; TYPE_2__ Integer; TYPE_1__ Common; } ;
typedef int ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_5__ ACPI_OPERAND_OBJECT ;


 int ACPI_ERROR (int ) ;
 int ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_REFCLASS_TABLE ;



 int ACPI_TYPE_LOCAL_REFERENCE ;


 int AE_AML_OPERAND_TYPE ;
 int AE_AML_TARGET_TYPE ;
 int AE_INFO ;
 int AE_OK ;
 int AcpiUtAddReference (TYPE_5__*) ;
 int AcpiUtCopyIobjectToIobject (TYPE_5__*,TYPE_5__**,int *) ;
 int AcpiUtGetObjectTypeName (TYPE_5__*) ;
 int AcpiUtRemoveReference (TYPE_5__*) ;
 int ExStoreObjectToIndex ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static ACPI_STATUS
AcpiExStoreObjectToIndex (
    ACPI_OPERAND_OBJECT *SourceDesc,
    ACPI_OPERAND_OBJECT *IndexDesc,
    ACPI_WALK_STATE *WalkState)
{
    ACPI_STATUS Status = AE_OK;
    ACPI_OPERAND_OBJECT *ObjDesc;
    ACPI_OPERAND_OBJECT *NewDesc;
    UINT8 Value = 0;
    UINT32 i;


    ACPI_FUNCTION_TRACE (ExStoreObjectToIndex);






    switch (IndexDesc->Reference.TargetType)
    {
    case 129:
        ObjDesc = *(IndexDesc->Reference.Where);

        if (SourceDesc->Common.Type == ACPI_TYPE_LOCAL_REFERENCE &&
            SourceDesc->Reference.Class == ACPI_REFCLASS_TABLE)
        {


            AcpiUtAddReference (SourceDesc);
            NewDesc = SourceDesc;
        }
        else
        {


            Status = AcpiUtCopyIobjectToIobject (
                SourceDesc, &NewDesc, WalkState);
            if (ACPI_FAILURE (Status))
            {
                return_ACPI_STATUS (Status);
            }
        }

        if (ObjDesc)
        {


            for (i = 0;
                 i < ((ACPI_OPERAND_OBJECT *)
                        IndexDesc->Reference.Object)->Common.ReferenceCount;
                 i++)
            {
                AcpiUtRemoveReference (ObjDesc);
            }
        }

        *(IndexDesc->Reference.Where) = NewDesc;



        for (i = 1;
             i < ((ACPI_OPERAND_OBJECT *)
                    IndexDesc->Reference.Object)->Common.ReferenceCount;
             i++)
        {
            AcpiUtAddReference (NewDesc);
        }

        break;

    case 131:
        ObjDesc = IndexDesc->Reference.Object;
        if ((ObjDesc->Common.Type != 132) &&
            (ObjDesc->Common.Type != 128))
        {
            return_ACPI_STATUS (AE_AML_OPERAND_TYPE);
        }





        switch (SourceDesc->Common.Type)
        {
        case 130:



            Value = (UINT8) (SourceDesc->Integer.Value);
            break;

        case 132:
        case 128:



            Value = SourceDesc->Buffer.Pointer[0];
            break;

        default:



            ACPI_ERROR ((AE_INFO,
                "Source must be type [Integer/Buffer/String], found [%s]",
                AcpiUtGetObjectTypeName (SourceDesc)));
            return_ACPI_STATUS (AE_AML_OPERAND_TYPE);
        }



        ObjDesc->Buffer.Pointer[IndexDesc->Reference.Value] = Value;
        break;

    default:
        ACPI_ERROR ((AE_INFO,
            "Target is not of type [Package/BufferField]"));
        Status = AE_AML_TARGET_TYPE;
        break;
    }

    return_ACPI_STATUS (Status);
}
