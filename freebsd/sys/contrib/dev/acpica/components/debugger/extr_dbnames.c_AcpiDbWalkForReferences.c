
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int ACPI_STATUS ;
typedef int ACPI_OPERAND_OBJECT ;
typedef void ACPI_NAMESPACE_NODE ;
typedef scalar_t__ ACPI_HANDLE ;


 int AE_OK ;
 int * AcpiNsGetAttachedObject (void*) ;
 int AcpiOsPrintf (char*,void*,...) ;
 int AcpiUtGetNodeName (void*) ;

__attribute__((used)) static ACPI_STATUS
AcpiDbWalkForReferences (
    ACPI_HANDLE ObjHandle,
    UINT32 NestingLevel,
    void *Context,
    void **ReturnValue)
{
    ACPI_OPERAND_OBJECT *ObjDesc = (ACPI_OPERAND_OBJECT *) Context;
    ACPI_NAMESPACE_NODE *Node = (ACPI_NAMESPACE_NODE *) ObjHandle;




    if (Node == (void *) ObjDesc)
    {
        AcpiOsPrintf ("Object is a Node [%4.4s]\n",
            AcpiUtGetNodeName (Node));
    }



    if (AcpiNsGetAttachedObject (Node) == ObjDesc)
    {
        AcpiOsPrintf ("Reference at Node->Object %p [%4.4s]\n",
            Node, AcpiUtGetNodeName (Node));
    }

    return (AE_OK);
}
