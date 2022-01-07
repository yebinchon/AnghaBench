
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_7__ {int Opcode; } ;
struct TYPE_6__ {size_t Type; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_PARSE_OBJECT ;
typedef int ACPI_OPERAND_OBJECT ;
typedef TYPE_1__ ACPI_NAMESPACE_NODE ;
typedef scalar_t__ ACPI_HANDLE ;


 size_t ACPI_TYPE_NS_NODE_MAX ;
 int AE_OK ;
 int AcpiDbEnumerateObject (int *) ;
 int * AcpiGbl_NodeTypeCount ;
 int AcpiGbl_NodeTypeCountMisc ;
 int AcpiGbl_NumNodes ;
 int * AcpiNsGetAttachedObject (TYPE_1__*) ;
 TYPE_2__* AcpiPsGetDepthNext (int ,TYPE_2__*) ;
 scalar_t__ AcpiPsIsNamedOp (int ) ;
 scalar_t__ IsMethod ;
 size_t NumGrammarElements ;
 size_t NumMethodElements ;
 size_t NumNodes ;
 TYPE_2__* Op ;
 int Root ;
 size_t SizeOfAcpiObjects ;
 size_t SizeOfMethodTrees ;
 size_t SizeOfNodeEntries ;
 size_t SizeOfParseTree ;

__attribute__((used)) static ACPI_STATUS
AcpiDbClassifyOneObject (
    ACPI_HANDLE ObjHandle,
    UINT32 NestingLevel,
    void *Context,
    void **ReturnValue)
{
    ACPI_NAMESPACE_NODE *Node;
    ACPI_OPERAND_OBJECT *ObjDesc;
    UINT32 Type;


    AcpiGbl_NumNodes++;

    Node = (ACPI_NAMESPACE_NODE *) ObjHandle;
    ObjDesc = AcpiNsGetAttachedObject (Node);

    AcpiDbEnumerateObject (ObjDesc);

    Type = Node->Type;
    if (Type > ACPI_TYPE_NS_NODE_MAX)
    {
        AcpiGbl_NodeTypeCountMisc++;
    }
    else
    {
        AcpiGbl_NodeTypeCount [Type]++;
    }

    return (AE_OK);
}
