
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_12__ {scalar_t__ OwnerId; int DeviceCount; int NonSerialMethodCount; int SerializedMethodCount; int SerialMethodCount; int MethodCount; int OpRegionCount; int ObjectCount; } ;
struct TYPE_11__ {scalar_t__ OwnerId; } ;
struct TYPE_9__ {int InfoFlags; } ;
struct TYPE_10__ {TYPE_1__ Method; } ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;
typedef TYPE_3__ ACPI_NAMESPACE_NODE ;
typedef TYPE_4__ ACPI_INIT_WALK_INFO ;
typedef scalar_t__ ACPI_HANDLE ;


 int ACPI_EXCEPTION (int ) ;
 int ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_ENTRY () ;
 int ACPI_METHOD_SERIALIZED ;



 int AE_INFO ;
 int AE_OK ;
 int AcpiDsAutoSerializeMethod (TYPE_3__*,TYPE_2__*) ;
 int AcpiDsInitializeRegion (scalar_t__) ;
 int AcpiGbl_AutoSerializeMethods ;
 TYPE_2__* AcpiNsGetAttachedObject (TYPE_3__*) ;
 int AcpiNsGetType (scalar_t__) ;
 int AcpiUtGetNodeName (scalar_t__) ;

__attribute__((used)) static ACPI_STATUS
AcpiDsInitOneObject (
    ACPI_HANDLE ObjHandle,
    UINT32 Level,
    void *Context,
    void **ReturnValue)
{
    ACPI_INIT_WALK_INFO *Info = (ACPI_INIT_WALK_INFO *) Context;
    ACPI_NAMESPACE_NODE *Node = (ACPI_NAMESPACE_NODE *) ObjHandle;
    ACPI_STATUS Status;
    ACPI_OPERAND_OBJECT *ObjDesc;


    ACPI_FUNCTION_ENTRY ();






    if (Node->OwnerId != Info->OwnerId)
    {
        return (AE_OK);
    }

    Info->ObjectCount++;



    switch (AcpiNsGetType (ObjHandle))
    {
    case 128:

        Status = AcpiDsInitializeRegion (ObjHandle);
        if (ACPI_FAILURE (Status))
        {
            ACPI_EXCEPTION ((AE_INFO, Status,
                "During Region initialization %p [%4.4s]",
                ObjHandle, AcpiUtGetNodeName (ObjHandle)));
        }

        Info->OpRegionCount++;
        break;

    case 129:
        Info->MethodCount++;
        ObjDesc = AcpiNsGetAttachedObject (Node);
        if (!ObjDesc)
        {
            break;
        }



        if (ObjDesc->Method.InfoFlags & ACPI_METHOD_SERIALIZED)
        {
            Info->SerialMethodCount++;
            break;
        }

        if (AcpiGbl_AutoSerializeMethods)
        {


            AcpiDsAutoSerializeMethod (Node, ObjDesc);
            if (ObjDesc->Method.InfoFlags & ACPI_METHOD_SERIALIZED)
            {


                Info->SerialMethodCount++;
                Info->SerializedMethodCount++;
                break;
            }
        }

        Info->NonSerialMethodCount++;
        break;

    case 130:

        Info->DeviceCount++;
        break;

    default:

        break;
    }





    return (AE_OK);
}
