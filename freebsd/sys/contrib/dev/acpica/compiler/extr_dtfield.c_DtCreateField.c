
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_8__ {int Column; int NameColumn; int ByteOffset; int Line; scalar_t__ StringLength; void* Value; void* Name; } ;
struct TYPE_7__ {int Column; int Line; scalar_t__ Value; } ;
typedef TYPE_1__ DT_TABLE_UNIT ;
typedef TYPE_2__ DT_FIELD ;


 int AslGbl_FieldList ;
 int DtDumpFieldList (int ) ;
 int DtLinkField (TYPE_2__*) ;
 TYPE_2__* UtFieldCacheCalloc () ;
 int UtLocalCacheCalloc (scalar_t__) ;
 void* strcpy (int ,scalar_t__) ;
 scalar_t__ strlen (scalar_t__) ;

void
DtCreateField (
    DT_TABLE_UNIT *FieldKey,
    DT_TABLE_UNIT *FieldValue,
    UINT32 Offset)
{
    DT_FIELD *Field = UtFieldCacheCalloc ();


    Field->StringLength = 0;
    if (FieldKey->Value)
    {
        Field->Name =
            strcpy (UtLocalCacheCalloc (strlen (FieldKey->Value) + 1), FieldKey->Value);
    }

    if (FieldValue->Value)
    {
        Field->StringLength = strlen (FieldValue->Value);
        Field->Value =
            strcpy (UtLocalCacheCalloc (Field->StringLength + 1), FieldValue->Value);
    }

    Field->Line = FieldValue->Line;
    Field->ByteOffset = Offset;
    Field->NameColumn = FieldKey->Column;
    Field->Column = FieldValue->Column;
    DtLinkField (Field);

    DtDumpFieldList (AslGbl_FieldList);
}
