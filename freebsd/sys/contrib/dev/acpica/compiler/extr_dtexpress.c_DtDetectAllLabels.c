
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_9__ {scalar_t__ Opcode; } ;
struct TYPE_8__ {struct TYPE_8__* Next; int TableOffset; int Name; } ;
typedef TYPE_1__ DT_FIELD ;
typedef TYPE_2__ ACPI_DMTABLE_INFO ;


 scalar_t__ ACPI_DMT_LABEL ;
 int AslGbl_CurrentTableOffset ;
 scalar_t__ DtGetFieldLength (TYPE_1__*,TYPE_2__*) ;
 TYPE_2__* DtGetGenericTableInfo (int ) ;
 int DtInsertLabelField (TYPE_1__*) ;

void
DtDetectAllLabels (
    DT_FIELD *FieldList)
{
    ACPI_DMTABLE_INFO *Info;
    DT_FIELD *GenericField;
    UINT32 TableOffset;


    TableOffset = AslGbl_CurrentTableOffset;
    GenericField = FieldList;
    while (GenericField)
    {
        Info = DtGetGenericTableInfo (GenericField->Name);
        if (Info)
        {


            GenericField->TableOffset = TableOffset;
            TableOffset += DtGetFieldLength (GenericField, Info);



            if (Info->Opcode == ACPI_DMT_LABEL)
            {
                DtInsertLabelField (GenericField);
            }
        }

        GenericField = GenericField->Next;
    }
}
