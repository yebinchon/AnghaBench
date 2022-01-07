
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_4__ {scalar_t__ TotalLength; scalar_t__ Length; int Buffer; } ;
typedef TYPE_1__ DT_SUBTABLE ;
typedef int ACPI_STATUS ;


 int ACPI_CAST_PTR (int ,char*) ;
 int AE_OK ;
 int UINT8 ;
 char* UtLocalCacheCalloc (scalar_t__) ;
 TYPE_1__* UtSubtableCacheCalloc () ;

ACPI_STATUS
DtCompilePadding (
    UINT32 Length,
    DT_SUBTABLE **RetSubtable)
{
    DT_SUBTABLE *Subtable;

    char *String;


    Subtable = UtSubtableCacheCalloc ();

    if (Length > 0)
    {
        String = UtLocalCacheCalloc (Length);
        Subtable->Buffer = ACPI_CAST_PTR (UINT8, String);
    }

    Subtable->Length = Length;
    Subtable->TotalLength = Length;


    *RetSubtable = Subtable;
    return (AE_OK);
}
