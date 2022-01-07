
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_27__ {int Ascii; } ;
struct TYPE_31__ {int Type; TYPE_1__ Name; } ;
struct TYPE_28__ {int const Type; } ;
struct TYPE_30__ {TYPE_2__ Common; } ;
struct TYPE_29__ {scalar_t__ Opcode; int ResultObj; } ;
typedef TYPE_3__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_4__ ACPI_OPERAND_OBJECT ;
typedef int ACPI_OBJECT_TYPE ;
typedef TYPE_5__ ACPI_NAMESPACE_NODE ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_4__*) ;
 int AE_AML_TARGET_TYPE ;
 int AE_INFO ;
 int AE_OK ;
 scalar_t__ AML_COPY_OBJECT_OP ;
 scalar_t__ AML_STORE_OP ;
 int AcpiExResolveObject (TYPE_4__**,int,TYPE_3__*) ;
 int AcpiExStoreDirectToNode (TYPE_4__*,TYPE_5__*,TYPE_3__*) ;
 int AcpiExStoreObjectToObject (TYPE_4__*,TYPE_4__*,TYPE_4__**,TYPE_3__*) ;
 int AcpiExWriteDataToField (TYPE_4__*,TYPE_4__*,int *) ;
 int AcpiNsAttachObject (TYPE_5__*,TYPE_4__*,int const) ;
 TYPE_4__* AcpiNsGetAttachedObject (TYPE_5__*) ;
 int AcpiNsGetType (TYPE_5__*) ;
 int AcpiUtGetObjectTypeName (TYPE_4__*) ;
 int AcpiUtGetTypeName (int) ;
 int ExStoreObjectToNode ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiExStoreObjectToNode (
    ACPI_OPERAND_OBJECT *SourceDesc,
    ACPI_NAMESPACE_NODE *Node,
    ACPI_WALK_STATE *WalkState,
    UINT8 ImplicitConversion)
{
    ACPI_STATUS Status = AE_OK;
    ACPI_OPERAND_OBJECT *TargetDesc;
    ACPI_OPERAND_OBJECT *NewDesc;
    ACPI_OBJECT_TYPE TargetType;


    ACPI_FUNCTION_TRACE_PTR (ExStoreObjectToNode, SourceDesc);




    TargetType = AcpiNsGetType (Node);
    TargetDesc = AcpiNsGetAttachedObject (Node);

    ACPI_DEBUG_PRINT ((ACPI_DB_EXEC, "Storing %p [%s] to node %p [%s]\n",
        SourceDesc, AcpiUtGetObjectTypeName (SourceDesc),
        Node, AcpiUtGetTypeName (TargetType)));



    if (WalkState->Opcode != AML_COPY_OBJECT_OP)
    {
        switch (TargetType)
        {
        case 133:





            if (WalkState->Opcode == AML_STORE_OP)
            {
                if (SourceDesc->Common.Type != 133)
                {
                    ACPI_ERROR ((AE_INFO,
                        "Cannot assign type [%s] to [Package] "
                        "(source must be type Pkg)",
                        AcpiUtGetObjectTypeName (SourceDesc)));

                    return_ACPI_STATUS (AE_AML_TARGET_TYPE);
                }
                break;
            }



        case 140:
        case 139:
        case 134:
        case 130:
        case 132:
        case 131:
        case 128:

            ACPI_ERROR ((AE_INFO,
                "Target must be [Buffer/Integer/String/Reference]"
                ", found [%s] (%4.4s)",
                AcpiUtGetTypeName (Node->Type), Node->Name.Ascii));

            return_ACPI_STATUS (AE_AML_TARGET_TYPE);

        default:
            break;
        }
    }





    Status = AcpiExResolveObject (&SourceDesc, TargetType, WalkState);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }



    switch (TargetType)
    {




    case 138:
    case 129:
    case 142:

        if ((WalkState->Opcode == AML_COPY_OBJECT_OP) ||
            !ImplicitConversion)
        {





            Status = AcpiExStoreDirectToNode (SourceDesc, Node, WalkState);
            break;
        }



        Status = AcpiExStoreObjectToObject (SourceDesc, TargetDesc,
            &NewDesc, WalkState);
        if (ACPI_FAILURE (Status))
        {
            return_ACPI_STATUS (Status);
        }

        if (NewDesc != TargetDesc)
        {
            Status = AcpiNsAttachObject (
                Node, NewDesc, NewDesc->Common.Type);

            ACPI_DEBUG_PRINT ((ACPI_DB_EXEC,
                "Store type [%s] into [%s] via Convert/Attach\n",
                AcpiUtGetObjectTypeName (SourceDesc),
                AcpiUtGetObjectTypeName (NewDesc)));
        }
        break;

    case 141:
    case 135:
    case 137:
    case 136:






        Status = AcpiExWriteDataToField (SourceDesc, TargetDesc,
            &WalkState->ResultObj);
        break;

    default:
        Status = AcpiExStoreDirectToNode (SourceDesc, Node, WalkState);
        break;
    }

    return_ACPI_STATUS (Status);
}
