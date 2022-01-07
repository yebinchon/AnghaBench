
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_8__ {int PackageInit; int FieldInit; int PackageCount; int BufferCount; int FieldCount; int OpRegionCount; int ObjectCount; } ;
struct TYPE_6__ {int Flags; } ;
struct TYPE_7__ {TYPE_1__ Common; } ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;
typedef int ACPI_OBJECT_TYPE ;
typedef int ACPI_NAMESPACE_NODE ;
typedef TYPE_3__ ACPI_INIT_WALK_INFO ;
typedef scalar_t__ ACPI_HANDLE ;


 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;





 int AE_INFO ;
 int AE_OK ;
 int AE_TYPE ;
 int AOPOBJ_DATA_VALID ;
 int AcpiDsGetBankFieldArguments (TYPE_2__*) ;
 int AcpiExEnterInterpreter () ;
 int AcpiExExitInterpreter () ;
 TYPE_2__* AcpiNsGetAttachedObject (int *) ;
 int AcpiNsGetType (scalar_t__) ;
 int AcpiNsInitOnePackage (scalar_t__,int ,int *,int *) ;
 int AcpiUtGetNodeName (int *) ;
 int AcpiUtGetTypeName (int) ;
 int NsInitOneObject ;

__attribute__((used)) static ACPI_STATUS
AcpiNsInitOneObject (
    ACPI_HANDLE ObjHandle,
    UINT32 Level,
    void *Context,
    void **ReturnValue)
{
    ACPI_OBJECT_TYPE Type;
    ACPI_STATUS Status = AE_OK;
    ACPI_INIT_WALK_INFO *Info = (ACPI_INIT_WALK_INFO *) Context;
    ACPI_NAMESPACE_NODE *Node = (ACPI_NAMESPACE_NODE *) ObjHandle;
    ACPI_OPERAND_OBJECT *ObjDesc;


    ACPI_FUNCTION_NAME (NsInitOneObject);


    Info->ObjectCount++;



    Type = AcpiNsGetType (ObjHandle);
    ObjDesc = AcpiNsGetAttachedObject (Node);
    if (!ObjDesc)
    {
        return (AE_OK);
    }



    switch (Type)
    {
    case 128:

        Info->OpRegionCount++;
        break;

    case 131:

        Info->FieldCount++;
        break;

    case 130:

        Info->FieldCount++;
        break;

    case 132:

        Info->BufferCount++;
        break;

    case 129:

        Info->PackageCount++;
        break;

    default:



        return (AE_OK);
    }



    if (ObjDesc->Common.Flags & AOPOBJ_DATA_VALID)
    {
        return (AE_OK);
    }



    AcpiExEnterInterpreter ();





    switch (Type)
    {
    case 130:



        Info->FieldInit++;
        Status = AcpiDsGetBankFieldArguments (ObjDesc);
        break;

    case 129:



        Info->PackageInit++;
        Status = AcpiNsInitOnePackage (ObjHandle, Level, ((void*)0), ((void*)0));
        break;

    default:



        Status = AE_TYPE;
        ACPI_EXCEPTION ((AE_INFO, Status,
            "Opcode is not deferred [%4.4s] (%s)",
            AcpiUtGetNodeName (Node), AcpiUtGetTypeName (Type)));
        break;
    }

    if (ACPI_FAILURE (Status))
    {
        ACPI_EXCEPTION ((AE_INFO, Status,
            "Could not execute arguments for [%4.4s] (%s)",
            AcpiUtGetNodeName (Node), AcpiUtGetTypeName (Type)));
    }





    AcpiExExitInterpreter ();
    return (AE_OK);
}
