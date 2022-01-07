
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DT_SUBTABLE ;
typedef int DT_FIELD ;
typedef int ACPI_STATUS ;
typedef int ACPI_DMTABLE_INFO ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 int DtCompileTable (int **,int *,int **) ;
 int DtInsertSubtable (int *,int *) ;
 int * DtPeekSubtable () ;

ACPI_STATUS
DtCompileTwoSubtables (
    void **List,
    ACPI_DMTABLE_INFO *TableInfo1,
    ACPI_DMTABLE_INFO *TableInfo2)
{
    ACPI_STATUS Status;
    DT_SUBTABLE *Subtable;
    DT_SUBTABLE *ParentTable;
    DT_FIELD **PFieldList = (DT_FIELD **) List;


    Status = DtCompileTable (PFieldList, TableInfo1, &Subtable);
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }

    ParentTable = DtPeekSubtable ();
    DtInsertSubtable (ParentTable, Subtable);

    while (*PFieldList)
    {
        Status = DtCompileTable (PFieldList, TableInfo2, &Subtable);
        if (ACPI_FAILURE (Status))
        {
            return (Status);
        }

        DtInsertSubtable (ParentTable, Subtable);
    }

    return (AE_OK);
}
