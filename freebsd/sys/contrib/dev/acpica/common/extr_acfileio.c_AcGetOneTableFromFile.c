
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
struct TYPE_9__ {char* Signature; int Length; } ;
typedef int INT32 ;
typedef int FILE ;
typedef TYPE_1__ ACPI_TABLE_HEADER ;
typedef int ACPI_STATUS ;
typedef int ACPI_SIZE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_CTRL_TERMINATE ;
 int AE_ERROR ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AE_TYPE ;
 int AcCheckTextModeCorruption (TYPE_1__*) ;
 int AcValidateTableHeader (int *,long) ;
 TYPE_1__* AcpiOsAllocate (int ) ;
 int AcpiOsFree (TYPE_1__*) ;
 int AcpiTbVerifyChecksum (TYPE_1__*,int) ;
 int AcpiUtIsAmlTable (TYPE_1__*) ;
 int SEEK_SET ;
 int fprintf (int ,char*,char*,char*) ;
 int fread (TYPE_1__*,int,int,int *) ;
 int fseek (int *,long,int ) ;
 long ftell (int *) ;
 int stderr ;

__attribute__((used)) static ACPI_STATUS
AcGetOneTableFromFile (
    char *Filename,
    FILE *File,
    UINT8 GetOnlyAmlTables,
    ACPI_TABLE_HEADER **ReturnTable)
{
    ACPI_STATUS Status = AE_OK;
    ACPI_TABLE_HEADER TableHeader;
    ACPI_TABLE_HEADER *Table;
    INT32 Count;
    long TableOffset;


    *ReturnTable = ((void*)0);



    TableOffset = ftell (File);
    Count = fread (&TableHeader, 1, sizeof (ACPI_TABLE_HEADER), File);
    if (Count != sizeof (ACPI_TABLE_HEADER))
    {
        return (AE_CTRL_TERMINATE);
    }

    if (GetOnlyAmlTables)
    {


        Status = AcValidateTableHeader (File, TableOffset);
        if (ACPI_FAILURE (Status))
        {
            return (Status);
        }





        if (!AcpiUtIsAmlTable (&TableHeader))
        {
            fprintf (stderr,
                "    %s: Table [%4.4s] is not an AML table - ignoring\n",
                Filename, TableHeader.Signature);

            return (AE_TYPE);
        }
    }



    Table = AcpiOsAllocate ((ACPI_SIZE) TableHeader.Length);
    if (!Table)
    {
        return (AE_NO_MEMORY);
    }



    fseek (File, TableOffset, SEEK_SET);

    Count = fread (Table, 1, TableHeader.Length, File);





    if (GetOnlyAmlTables && Count != (INT32) TableHeader.Length)
    {
        Status = AE_ERROR;
        goto ErrorExit;
    }



    Status = AcpiTbVerifyChecksum (Table, TableHeader.Length);
    if (ACPI_FAILURE (Status))
    {
        Status = AcCheckTextModeCorruption (Table);
        if (ACPI_FAILURE (Status))
        {
            goto ErrorExit;
        }
    }

    *ReturnTable = Table;
    return (AE_OK);


ErrorExit:
    AcpiOsFree (Table);
    return (Status);
}
