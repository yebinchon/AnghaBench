
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_3__ {char* Signature; char* Description; } ;
typedef TYPE_1__ AH_TABLE ;


 int ACPI_CA_VERSION ;
 TYPE_1__* AcpiGbl_SupportedTables ;
 int printf (char*,...) ;

void
UtDisplaySupportedTables (
    void)
{
    const AH_TABLE *TableData;
    UINT32 i;


    printf ("\nACPI tables supported by iASL version %8.8X:\n"
        "  (Compiler, Disassembler, Template Generator)\n\n",
        ACPI_CA_VERSION);



    printf ("\n  Supported ACPI tables:\n");
    for (TableData = AcpiGbl_SupportedTables, i = 1;
         TableData->Signature; TableData++, i++)
    {
        printf ("%8u) %s    %s\n", i,
            TableData->Signature, TableData->Description);
    }
}
