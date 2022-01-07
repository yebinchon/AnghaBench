
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;


 int ACPI_FREE (int *) ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int ASL_WALK_VISIT_TWICE ;
 int * AcpiDsCreateWalkState (int ,int *,int *,int *) ;
 int AslGbl_ParseTreeRoot ;
 int TrWalkParseTree (int ,int ,int ,int ,int *) ;
 int XfNamespaceLocateBegin ;
 int XfNamespaceLocateEnd ;

ACPI_STATUS
XfCrossReferenceNamespace (
    void)
{
    ACPI_WALK_STATE *WalkState;






    WalkState = AcpiDsCreateWalkState (0, ((void*)0), ((void*)0), ((void*)0));
    if (!WalkState)
    {
        return (AE_NO_MEMORY);
    }



    TrWalkParseTree (AslGbl_ParseTreeRoot, ASL_WALK_VISIT_TWICE,
        XfNamespaceLocateBegin, XfNamespaceLocateEnd, WalkState);

    ACPI_FREE (WalkState);
    return (AE_OK);
}
