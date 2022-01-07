
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;


 scalar_t__ ACPI_CA_VERSION ;
 int AcpiUtSetIntegerWidth (int) ;
 int * AslGbl_FieldList ;
 int * AslGbl_RootTable ;
 int * AslGbl_SubtableStack ;
 int VersionString ;
 int sprintf (int ,char*,int) ;

void
DtInitialize (
    void)
{


    AcpiUtSetIntegerWidth (2);

    AslGbl_FieldList = ((void*)0);
    AslGbl_RootTable = ((void*)0);
    AslGbl_SubtableStack = ((void*)0);

    sprintf (VersionString, "%X", (UINT32) ACPI_CA_VERSION);
    return;
}
