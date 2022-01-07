
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_3__ {void* Flags; int Value; struct TYPE_3__* Next; } ;
typedef TYPE_1__ DT_FIELD ;


 int ASL_CREATOR_ID ;
 scalar_t__ AslGbl_UseOriginalCompilerId ;
 void* DT_FIELD_NOT_ALLOCATED ;
 int VersionString ;

__attribute__((used)) static void
DtInsertCompilerIds (
    DT_FIELD *FieldList)
{
    DT_FIELD *Next;
    UINT32 i;






    if (AslGbl_UseOriginalCompilerId)
    {
        return;
    }



    Next = FieldList;
    for (i = 0; i < 7; i++)
    {
        Next = Next->Next;
    }

    Next->Value = ASL_CREATOR_ID;
    Next->Flags = DT_FIELD_NOT_ALLOCATED;

    Next = Next->Next;
    Next->Value = VersionString;
    Next->Flags = DT_FIELD_NOT_ALLOCATED;
}
