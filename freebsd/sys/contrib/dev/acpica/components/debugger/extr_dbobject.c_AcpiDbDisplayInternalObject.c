
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_18__ {size_t Value; int Class; TYPE_6__* Node; TYPE_6__* Object; TYPE_6__** Where; int TargetType; } ;
struct TYPE_15__ {int Type; } ;
struct TYPE_20__ {TYPE_4__ Reference; TYPE_1__ Common; } ;
struct TYPE_19__ {TYPE_3__* Arguments; TYPE_2__* LocalVariables; } ;
struct TYPE_17__ {TYPE_6__* Object; } ;
struct TYPE_16__ {TYPE_6__* Object; } ;
typedef TYPE_5__ ACPI_WALK_STATE ;
typedef TYPE_6__ ACPI_OPERAND_OBJECT ;
typedef TYPE_6__ ACPI_NAMESPACE_NODE ;





 int ACPI_GET_DESCRIPTOR_TYPE (TYPE_6__*) ;
 int ACPI_TYPE_LOCAL_MAX ;


 int AcpiDbDecodeInternalObject (TYPE_6__*) ;
 int AcpiDbDecodeNode (TYPE_6__*) ;
 int AcpiOsPrintf (char*,...) ;
 int AcpiUtGetDescriptorName (TYPE_6__*) ;
 int AcpiUtGetReferenceName (TYPE_6__*) ;

void
AcpiDbDisplayInternalObject (
    ACPI_OPERAND_OBJECT *ObjDesc,
    ACPI_WALK_STATE *WalkState)
{
    UINT8 Type;


    AcpiOsPrintf ("%p ", ObjDesc);

    if (!ObjDesc)
    {
        AcpiOsPrintf ("<Null Object>\n");
        return;
    }



    switch (ACPI_GET_DESCRIPTOR_TYPE (ObjDesc))
    {
    case 138:

        AcpiOsPrintf ("<Parser>  ");
        break;

    case 140:

        AcpiDbDecodeNode ((ACPI_NAMESPACE_NODE *) ObjDesc);
        break;

    case 139:

        Type = ObjDesc->Common.Type;
        if (Type > ACPI_TYPE_LOCAL_MAX)
        {
            AcpiOsPrintf (" Type %X [Invalid Type]", (UINT32) Type);
            return;
        }



        switch (ObjDesc->Common.Type)
        {
        case 129:

            AcpiOsPrintf ("[%s] ", AcpiUtGetReferenceName (ObjDesc));



            switch (ObjDesc->Reference.Class)
            {
            case 134:

                AcpiOsPrintf ("%X ", ObjDesc->Reference.Value);
                if (WalkState)
                {
                    ObjDesc = WalkState->LocalVariables
                        [ObjDesc->Reference.Value].Object;
                    AcpiOsPrintf ("%p", ObjDesc);
                    AcpiDbDecodeInternalObject (ObjDesc);
                }
                break;

            case 137:

                AcpiOsPrintf ("%X ", ObjDesc->Reference.Value);
                if (WalkState)
                {
                    ObjDesc = WalkState->Arguments
                        [ObjDesc->Reference.Value].Object;
                    AcpiOsPrintf ("%p", ObjDesc);
                    AcpiDbDecodeInternalObject (ObjDesc);
                }
                break;

            case 135:

                switch (ObjDesc->Reference.TargetType)
                {
                case 130:

                    AcpiOsPrintf ("%p", ObjDesc->Reference.Object);
                    AcpiDbDecodeInternalObject (ObjDesc->Reference.Object);
                    break;

                case 128:

                    AcpiOsPrintf ("%p", ObjDesc->Reference.Where);
                    if (!ObjDesc->Reference.Where)
                    {
                        AcpiOsPrintf (" Uninitialized WHERE pointer");
                    }
                    else
                    {
                        AcpiDbDecodeInternalObject (
                            *(ObjDesc->Reference.Where));
                    }
                    break;

                default:

                    AcpiOsPrintf ("Unknown index target type");
                    break;
                }
                break;

            case 132:

                if (!ObjDesc->Reference.Object)
                {
                    AcpiOsPrintf (
                        "Uninitialized reference subobject pointer");
                    break;
                }



                switch (ACPI_GET_DESCRIPTOR_TYPE (ObjDesc->Reference.Object))
                {
                case 140:

                    AcpiDbDecodeNode (ObjDesc->Reference.Object);
                    break;

                case 139:

                    AcpiDbDecodeInternalObject (ObjDesc->Reference.Object);
                    break;

                default:
                    break;
                }
                break;

            case 133:

                AcpiDbDecodeNode (ObjDesc->Reference.Node);
                break;

            case 136:
            case 131:

                AcpiOsPrintf ("\n");
                break;

            default:

                AcpiOsPrintf ("%2.2X\n", ObjDesc->Reference.Class);
                break;
            }
            break;

        default:

            AcpiOsPrintf ("<Obj>            ");
            AcpiDbDecodeInternalObject (ObjDesc);
            break;
        }
        break;

    default:

        AcpiOsPrintf ("<Not a valid ACPI Object Descriptor> [%s]",
            AcpiUtGetDescriptorName (ObjDesc));
        break;
    }

    AcpiOsPrintf ("\n");
}
