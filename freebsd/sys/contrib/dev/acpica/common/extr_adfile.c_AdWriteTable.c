
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int ACPI_TABLE_HEADER ;


 int AcpiOsPrintf (char*,char*,char*) ;
 char* AdGenerateFilename (char*,char*) ;
 int AdWriteBuffer (char*,char*,int ) ;

void
AdWriteTable (
    ACPI_TABLE_HEADER *Table,
    UINT32 Length,
    char *TableName,
    char *OemTableId)
{
    char *Filename;


    Filename = AdGenerateFilename (TableName, OemTableId);
    AdWriteBuffer (Filename, (char *) Table, Length);

    AcpiOsPrintf ("Table [%s] written to \"%s\"\n", TableName, Filename);
}
