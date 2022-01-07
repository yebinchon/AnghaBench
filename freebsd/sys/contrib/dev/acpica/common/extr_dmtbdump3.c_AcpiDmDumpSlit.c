
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT8 ;
typedef scalar_t__ UINT32 ;
struct TYPE_7__ {scalar_t__ Entry; scalar_t__ LocalityCount; } ;
struct TYPE_6__ {scalar_t__ Length; } ;
typedef TYPE_1__ ACPI_TABLE_HEADER ;
typedef int ACPI_STATUS ;


 TYPE_4__* ACPI_CAST_PTR (int ,TYPE_1__*) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_OFFSET (int ,int ) ;
 int ACPI_TABLE_SLIT ;
 int AcpiDmDumpTable (scalar_t__,int ,TYPE_1__*,int ,int ) ;
 int AcpiDmLineHeader (scalar_t__,int ,int *) ;
 int AcpiDmLineHeader2 (scalar_t__,scalar_t__,char*,scalar_t__) ;
 int AcpiDmTableInfoSlit ;
 int AcpiOsPrintf (char*,...) ;
 int * Entry ;

void
AcpiDmDumpSlit (
    ACPI_TABLE_HEADER *Table)
{
    ACPI_STATUS Status;
    UINT32 Offset;
    UINT8 *Row;
    UINT32 Localities;
    UINT32 i;
    UINT32 j;




    Status = AcpiDmDumpTable (Table->Length, 0, Table, 0, AcpiDmTableInfoSlit);
    if (ACPI_FAILURE (Status))
    {
        return;
    }



    Localities = (UINT32) ACPI_CAST_PTR (ACPI_TABLE_SLIT, Table)->LocalityCount;
    Offset = ACPI_OFFSET (ACPI_TABLE_SLIT, Entry[0]);
    Row = (UINT8 *) ACPI_CAST_PTR (ACPI_TABLE_SLIT, Table)->Entry;

    for (i = 0; i < Localities; i++)
    {


        AcpiDmLineHeader2 (Offset, Localities, "Locality", i);
        for (j = 0; j < Localities; j++)
        {


            if (Offset >= Table->Length)
            {
                AcpiOsPrintf (
                    "\n**** Not enough room in table for all localities\n");
                return;
            }

            AcpiOsPrintf ("%2.2X", Row[j]);
            Offset++;



            if ((j+1) < Localities)
            {
                AcpiOsPrintf (" ");

                if (j && (((j+1) % 16) == 0))
                {
                    AcpiOsPrintf ("\\\n");
                    AcpiDmLineHeader (Offset, 0, ((void*)0));
                }
            }
        }



        AcpiOsPrintf ("\n");
        Row += Localities;
    }
}
