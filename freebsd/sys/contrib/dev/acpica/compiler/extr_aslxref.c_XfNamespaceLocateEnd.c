
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_9__ {int Flags; int ObjectType; } ;
struct TYPE_7__ {scalar_t__ ParseOpcode; int AmlOpcode; } ;
struct TYPE_8__ {TYPE_1__ Asl; } ;
typedef int ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;
typedef TYPE_3__ ACPI_OPCODE_INFO ;


 int ACPI_DB_DISPATCH ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_TRACE (int (*) (TYPE_2__*,int ,void*)) ;
 int AE_OK ;
 int AML_NAMED ;
 int AcpiDsScopeStackPop (int *) ;
 scalar_t__ AcpiNsOpensScope (int ) ;
 TYPE_3__* AcpiPsGetOpcodeInfo (int ) ;
 int AcpiUtGetTypeName (int ) ;
 int AslMapNamedOpcodeToDataType (int ) ;
 scalar_t__ PARSEOP_EXTERNAL ;
 scalar_t__ PARSEOP_METHODCALL ;
 scalar_t__ PARSEOP_NAMESEG ;
 scalar_t__ PARSEOP_NAMESTRING ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static ACPI_STATUS
XfNamespaceLocateEnd (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    void *Context)
{
    ACPI_WALK_STATE *WalkState = (ACPI_WALK_STATE *) Context;
    const ACPI_OPCODE_INFO *OpInfo;


    ACPI_FUNCTION_TRACE (XfNamespaceLocateEnd);




    OpInfo = AcpiPsGetOpcodeInfo (Op->Asl.AmlOpcode);
    if (!(OpInfo->Flags & AML_NAMED))
    {
        return_ACPI_STATUS (AE_OK);
    }



    if ((Op->Asl.ParseOpcode == PARSEOP_NAMESTRING) ||
        (Op->Asl.ParseOpcode == PARSEOP_NAMESEG) ||
        (Op->Asl.ParseOpcode == PARSEOP_METHODCALL) ||
        (Op->Asl.ParseOpcode == PARSEOP_EXTERNAL))
    {
        return_ACPI_STATUS (AE_OK);
    }



    if (AcpiNsOpensScope (AslMapNamedOpcodeToDataType (Op->Asl.AmlOpcode)))
    {

        ACPI_DEBUG_PRINT ((ACPI_DB_DISPATCH,
            "%s: Popping scope for Op %p\n",
            AcpiUtGetTypeName (OpInfo->ObjectType), Op));

        (void) AcpiDsScopeStackPop (WalkState);
    }

    return_ACPI_STATUS (AE_OK);
}
