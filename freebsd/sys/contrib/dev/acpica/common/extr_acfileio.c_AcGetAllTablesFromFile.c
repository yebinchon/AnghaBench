
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_4__ {struct TYPE_4__* Next; int * Table; } ;
typedef int FILE ;
typedef int ACPI_TABLE_HEADER ;
typedef scalar_t__ ACPI_STATUS ;
typedef TYPE_1__ ACPI_NEW_TABLE_DESC ;


 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 scalar_t__ ACPI_SUCCESS (scalar_t__) ;
 int ACPI_UINT32_MAX ;
 scalar_t__ AE_BAD_HEADER ;
 scalar_t__ AE_CTRL_TERMINATE ;
 scalar_t__ AE_ERROR ;
 scalar_t__ AE_NOT_EXIST ;
 scalar_t__ AE_NO_MEMORY ;
 scalar_t__ AE_OK ;
 scalar_t__ AE_TYPE ;
 scalar_t__ AcGetOneTableFromFile (char*,int *,int ,int **) ;
 int AcIsFileBinary (int *) ;
 TYPE_1__* AcpiOsAllocate (int) ;
 int AcpiOsFree (int *) ;
 int AcpiTbPrintTableHeader (int ,int *) ;
 int CmGetFileSize (int *) ;
 scalar_t__ ENOENT ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*,...) ;
 int stderr ;

ACPI_STATUS
AcGetAllTablesFromFile (
    char *Filename,
    UINT8 GetOnlyAmlTables,
    ACPI_NEW_TABLE_DESC **ReturnListHead)
{
    ACPI_NEW_TABLE_DESC *ListHead = ((void*)0);
    ACPI_NEW_TABLE_DESC *ListTail = ((void*)0);
    ACPI_NEW_TABLE_DESC *TableDesc;
    FILE *File;
    ACPI_TABLE_HEADER *Table = ((void*)0);
    UINT32 FileSize;
    ACPI_STATUS Status = AE_OK;


    File = fopen (Filename, "rb");
    if (!File)
    {
        fprintf (stderr, "Could not open input file: %s\n", Filename);
        if (errno == ENOENT)
        {
            return (AE_NOT_EXIST);
        }

        return (AE_ERROR);
    }



    FileSize = CmGetFileSize (File);
    if (FileSize == ACPI_UINT32_MAX)
    {
        Status = AE_ERROR;
        goto Exit;
    }

    fprintf (stderr,
        "Input file %s, Length 0x%X (%u) bytes\n",
        Filename, FileSize, FileSize);



    if (FileSize < sizeof (ACPI_TABLE_HEADER))
    {
        Status = AE_BAD_HEADER;
        goto Exit;
    }



    if (!AcIsFileBinary (File))
    {
        fprintf (stderr,
            "    %s: File does not appear to contain a valid AML table\n",
            Filename);
        Status = AE_TYPE;
        goto Exit;
    }



    while (ACPI_SUCCESS (Status))
    {


        Status = AcGetOneTableFromFile (
            Filename, File, GetOnlyAmlTables, &Table);

        if (Status == AE_CTRL_TERMINATE)
        {
            Status = AE_OK;
            break;
        }
        else if (Status == AE_TYPE)
        {
            Status = AE_OK;
            goto Exit;
        }
        else if (ACPI_FAILURE (Status))
        {
            goto Exit;
        }
        TableDesc = AcpiOsAllocate (sizeof (ACPI_NEW_TABLE_DESC));
        if (!TableDesc)
        {
            AcpiOsFree (Table);
            Status = AE_NO_MEMORY;
            goto Exit;
        }

        TableDesc->Table = Table;
        TableDesc->Next = ((void*)0);



        if (!ListHead)
        {
            ListHead = TableDesc;
            ListTail = TableDesc;
        }
        else
        {
            ListTail->Next = TableDesc;
            ListTail = TableDesc;
        }
    }



    if (*ReturnListHead)
    {
        ListTail = *ReturnListHead;
        while (ListTail->Next)
        {
            ListTail = ListTail->Next;
        }

        ListTail->Next = ListHead;
    }
    else
    {
        *ReturnListHead = ListHead;
    }

Exit:
    fclose(File);
    return (Status);
}
