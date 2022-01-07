
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_NAMESPACE_NODE ;


 int ACPI_FUNCTION_TRACE_PTR (int ,int *) ;
 char* AcpiNsGetNormalizedPathname (int *,int ) ;
 int FALSE ;
 int NsGetExternalPathname ;
 int return_PTR (char*) ;

char *
AcpiNsGetExternalPathname (
    ACPI_NAMESPACE_NODE *Node)
{
    char *NameBuffer;


    ACPI_FUNCTION_TRACE_PTR (NsGetExternalPathname, Node);


    NameBuffer = AcpiNsGetNormalizedPathname (Node, FALSE);
    return_PTR (NameBuffer);
}
