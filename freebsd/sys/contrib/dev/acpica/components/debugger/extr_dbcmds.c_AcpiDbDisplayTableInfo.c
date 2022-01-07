
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_7__ {size_t CurrentTableCount; TYPE_2__* Tables; } ;
struct TYPE_5__ {int Ascii; } ;
struct TYPE_6__ {int Flags; TYPE_1__ Signature; scalar_t__ Pointer; int Address; int OwnerId; } ;
typedef TYPE_2__ ACPI_TABLE_DESC ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_INFO (char*) ;
 int ACPI_TABLE_IS_LOADED ;



 int ACPI_TABLE_ORIGIN_MASK ;
 TYPE_4__ AcpiGbl_RootTableList ;
 int AcpiOsPrintf (char*,...) ;
 int AcpiTbPrintTableHeader (int ,scalar_t__) ;
 int AcpiTbValidateTable (TYPE_2__*) ;

void
AcpiDbDisplayTableInfo (
    char *TableArg)
{
    UINT32 i;
    ACPI_TABLE_DESC *TableDesc;
    ACPI_STATUS Status;




    AcpiOsPrintf ("Idx ID    Status Type                    "
        "TableHeader (Sig, Address, Length, Misc)\n");



    for (i = 0; i < AcpiGbl_RootTableList.CurrentTableCount; i++)
    {
        TableDesc = &AcpiGbl_RootTableList.Tables[i];



        AcpiOsPrintf ("%3u %.2u ", i, TableDesc->OwnerId);



        if (!(TableDesc->Flags & ACPI_TABLE_IS_LOADED))
        {
            AcpiOsPrintf ("NotLoaded ");
        }
        else
        {
            AcpiOsPrintf ("   Loaded ");
        }

        switch (TableDesc->Flags & ACPI_TABLE_ORIGIN_MASK)
        {
        case 130:

            AcpiOsPrintf ("External/virtual  ");
            break;

        case 129:

            AcpiOsPrintf ("Internal/physical ");
            break;

        case 128:

            AcpiOsPrintf ("Internal/virtual  ");
            break;

        default:

            AcpiOsPrintf ("INVALID TYPE      ");
            break;
        }



        Status = AcpiTbValidateTable (TableDesc);
        if (ACPI_FAILURE (Status))
        {
            return;
        }



        if (TableDesc->Pointer)
        {
            AcpiTbPrintTableHeader (TableDesc->Address, TableDesc->Pointer);
        }
        else
        {


            ACPI_INFO (("%4.4s - Table has been unloaded",
                TableDesc->Signature.Ascii));
        }
    }
}
