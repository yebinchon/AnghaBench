
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;


 int ACPI_UINT32_MAX ;
 int AE_OK ;
 int AcpiDbDisplayStatistics (char*) ;
 int * AcpiGbl_CommentAddrCache ;
 scalar_t__ AcpiGbl_DisplayFinalMemStats ;
 int * AcpiGbl_FileCache ;
 int * AcpiGbl_GlobalList ;
 int * AcpiGbl_NamespaceCache ;
 int * AcpiGbl_NsNodeList ;
 int * AcpiGbl_OperandCache ;
 int * AcpiGbl_PsNodeCache ;
 int * AcpiGbl_PsNodeExtCache ;
 int * AcpiGbl_RegCommentCache ;
 int * AcpiGbl_StateCache ;
 int AcpiOsDeleteCache (int *) ;
 int AcpiOsFree (int *) ;
 int AcpiUtDumpAllocations (int ,int *) ;
 int strcpy (char*,char*) ;

ACPI_STATUS
AcpiUtDeleteCaches (
    void)
{
    (void) AcpiOsDeleteCache (AcpiGbl_NamespaceCache);
    AcpiGbl_NamespaceCache = ((void*)0);

    (void) AcpiOsDeleteCache (AcpiGbl_StateCache);
    AcpiGbl_StateCache = ((void*)0);

    (void) AcpiOsDeleteCache (AcpiGbl_OperandCache);
    AcpiGbl_OperandCache = ((void*)0);

    (void) AcpiOsDeleteCache (AcpiGbl_PsNodeCache);
    AcpiGbl_PsNodeCache = ((void*)0);

    (void) AcpiOsDeleteCache (AcpiGbl_PsNodeExtCache);
    AcpiGbl_PsNodeExtCache = ((void*)0);
    return (AE_OK);
}
