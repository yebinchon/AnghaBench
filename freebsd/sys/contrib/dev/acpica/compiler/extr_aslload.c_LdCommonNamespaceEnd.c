
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_5__ {scalar_t__ ParseOpcode; int CompileFlags; int ParseOpName; int AmlOpcode; int Namepath; } ;
struct TYPE_6__ {TYPE_1__ Asl; } ;
typedef scalar_t__ BOOLEAN ;
typedef int ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;
typedef int ACPI_OBJECT_TYPE ;


 int ACPI_DB_DISPATCH ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int (*) (TYPE_2__*,int ,void*)) ;
 int ACPI_TYPE_LOCAL_RESOURCE ;
 int AE_OK ;
 int AcpiDsScopeStackPop (int *) ;
 scalar_t__ AcpiNsOpensScope (int ) ;
 int AcpiUtGetTypeName (int ) ;
 int AslMapNamedOpcodeToDataType (int ) ;
 scalar_t__ FALSE ;
 int OP_IS_RESOURCE_DESC ;
 scalar_t__ PARSEOP_DEFAULT_ARG ;
 scalar_t__ PARSEOP_NAME ;
 scalar_t__ TRUE ;

__attribute__((used)) static ACPI_STATUS
LdCommonNamespaceEnd (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    void *Context)
{
    ACPI_WALK_STATE *WalkState = (ACPI_WALK_STATE *) Context;
    ACPI_OBJECT_TYPE ObjectType;
    BOOLEAN ForceNewScope = FALSE;


    ACPI_FUNCTION_NAME (LdCommonNamespaceEnd);




    if (!Op->Asl.Namepath)
    {
        return (AE_OK);
    }



    if ((Op->Asl.ParseOpcode == PARSEOP_DEFAULT_ARG) &&
        (Op->Asl.CompileFlags == OP_IS_RESOURCE_DESC))
    {


        ObjectType = ACPI_TYPE_LOCAL_RESOURCE;
    }
    else
    {
        ObjectType = AslMapNamedOpcodeToDataType (Op->Asl.AmlOpcode);
    }



    if (Op->Asl.ParseOpcode == PARSEOP_NAME)
    {
        if (Op->Asl.CompileFlags & OP_IS_RESOURCE_DESC)
        {
            ForceNewScope = TRUE;
        }
    }



    if (ForceNewScope || AcpiNsOpensScope (ObjectType))
    {
        ACPI_DEBUG_PRINT ((ACPI_DB_DISPATCH,
            "(%s): Popping scope for Op [%s] %p\n",
            AcpiUtGetTypeName (ObjectType), Op->Asl.ParseOpName, Op));

        (void) AcpiDsScopeStackPop (WalkState);
    }

    return (AE_OK);
}
