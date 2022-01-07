
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef int ACPI_PARSE_OBJECT ;


 int ACPI_FREE (int *) ;
 int ACPI_LV_TABLES ;
 int ACPI_NS_ALL ;
 int ACPI_UINT32_MAX ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int ASL_WALK_VISIT_TWICE ;
 int AcpiDbgLevel ;
 int * AcpiDsCreateWalkState (int ,int *,int *,int *) ;
 int AcpiNsDumpTables (int ,int ) ;
 int LdCommonNamespaceEnd ;
 int LdNamespace1Begin ;
 int LdNamespace2Begin ;
 int TrWalkParseTree (int *,int ,int ,int ,int *) ;

ACPI_STATUS
LdLoadNamespace (
    ACPI_PARSE_OBJECT *RootOp)
{
    ACPI_WALK_STATE *WalkState;




    WalkState = AcpiDsCreateWalkState (0, ((void*)0), ((void*)0), ((void*)0));
    if (!WalkState)
    {
        return (AE_NO_MEMORY);
    }



    TrWalkParseTree (RootOp, ASL_WALK_VISIT_TWICE, LdNamespace1Begin,
        LdCommonNamespaceEnd, WalkState);



    TrWalkParseTree (RootOp, ASL_WALK_VISIT_TWICE, LdNamespace2Begin,
        LdCommonNamespaceEnd, WalkState);



    if (AcpiDbgLevel & ACPI_LV_TABLES)
    {
        AcpiNsDumpTables (ACPI_NS_ALL, ACPI_UINT32_MAX);
    }

    ACPI_FREE (WalkState);
    return (AE_OK);
}
