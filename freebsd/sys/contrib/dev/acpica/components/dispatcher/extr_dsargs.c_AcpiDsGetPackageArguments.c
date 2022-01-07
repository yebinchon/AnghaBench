
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int AmlStart; int AmlLength; int * Node; } ;
struct TYPE_6__ {int Flags; } ;
struct TYPE_8__ {TYPE_2__ Package; TYPE_1__ Common; } ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_OPERAND_OBJECT ;
typedef int ACPI_NAMESPACE_NODE ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_3__*) ;
 int AE_AML_INTERNAL ;
 int AE_INFO ;
 int AE_OK ;
 int AOPOBJ_DATA_VALID ;
 int AcpiDsExecuteArguments (int *,int *,int ,int ) ;
 int DsGetPackageArguments ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiDsGetPackageArguments (
    ACPI_OPERAND_OBJECT *ObjDesc)
{
    ACPI_NAMESPACE_NODE *Node;
    ACPI_STATUS Status;


    ACPI_FUNCTION_TRACE_PTR (DsGetPackageArguments, ObjDesc);


    if (ObjDesc->Common.Flags & AOPOBJ_DATA_VALID)
    {
        return_ACPI_STATUS (AE_OK);
    }



    Node = ObjDesc->Package.Node;
    if (!Node)
    {
        ACPI_ERROR ((AE_INFO,
            "No pointer back to namespace node in package %p", ObjDesc));
        return_ACPI_STATUS (AE_AML_INTERNAL);
    }

    ACPI_DEBUG_PRINT ((ACPI_DB_EXEC, "Package Argument Init, AML Ptr: %p\n",
        ObjDesc->Package.AmlStart));



    Status = AcpiDsExecuteArguments (Node, Node,
        ObjDesc->Package.AmlLength, ObjDesc->Package.AmlStart);

    return_ACPI_STATUS (Status);
}
