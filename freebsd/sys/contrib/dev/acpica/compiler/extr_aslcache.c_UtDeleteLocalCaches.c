
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_7__ {struct TYPE_7__* Next; } ;
typedef int DT_SUBTABLE ;
typedef int DT_FIELD ;
typedef TYPE_1__ ASL_CACHE_INFO ;
typedef int ACPI_PARSE_OBJECT ;


 int ACPI_FREE (TYPE_1__*) ;
 int ASL_DEBUG_OUTPUT ;
 int ASL_FIELD_CACHE_SIZE ;
 int ASL_PARSEOP_CACHE_SIZE ;
 int ASL_STRING_CACHE_SIZE ;
 int ASL_SUBTABLE_CACHE_SIZE ;
 int * AslGbl_FieldCacheLast ;
 TYPE_1__* AslGbl_FieldCacheList ;
 int * AslGbl_FieldCacheNext ;
 scalar_t__ AslGbl_FieldCount ;
 int * AslGbl_ParseOpCacheLast ;
 TYPE_1__* AslGbl_ParseOpCacheList ;
 int * AslGbl_ParseOpCacheNext ;
 scalar_t__ AslGbl_ParseOpCount ;
 int * AslGbl_ParseTreeRoot ;
 int * AslGbl_StringCacheLast ;
 TYPE_1__* AslGbl_StringCacheList ;
 int * AslGbl_StringCacheNext ;
 scalar_t__ AslGbl_StringCount ;
 int AslGbl_StringSize ;
 int * AslGbl_SubtableCacheLast ;
 TYPE_1__* AslGbl_SubtableCacheList ;
 int * AslGbl_SubtableCacheNext ;
 scalar_t__ AslGbl_SubtableCount ;
 int DbgPrint (int ,char*,scalar_t__,int,int,int) ;

void
UtDeleteLocalCaches (
    void)
{
    UINT32 BufferCount;
    ASL_CACHE_INFO *Next;





    BufferCount = 0;
    while (AslGbl_StringCacheList)
    {
        Next = AslGbl_StringCacheList->Next;
        ACPI_FREE (AslGbl_StringCacheList);
        AslGbl_StringCacheList = Next;
        BufferCount++;
    }

    DbgPrint (ASL_DEBUG_OUTPUT,
        "%u Strings (%u bytes), Buffer size: %u bytes, %u Buffers\n",
        AslGbl_StringCount, AslGbl_StringSize, ASL_STRING_CACHE_SIZE, BufferCount);



    AslGbl_StringSize = 0;
    AslGbl_StringCount = 0;
    AslGbl_StringCacheNext = ((void*)0);
    AslGbl_StringCacheLast = ((void*)0);




    BufferCount = 0;
    while (AslGbl_ParseOpCacheList)
    {
        Next = AslGbl_ParseOpCacheList->Next;
        ACPI_FREE (AslGbl_ParseOpCacheList);
        AslGbl_ParseOpCacheList = Next;
        BufferCount++;
    }

    DbgPrint (ASL_DEBUG_OUTPUT,
        "%u ParseOps, Buffer size: %u ops (%u bytes), %u Buffers\n",
        AslGbl_ParseOpCount, ASL_PARSEOP_CACHE_SIZE,
        ((UINT32) sizeof (ACPI_PARSE_OBJECT) * ASL_PARSEOP_CACHE_SIZE), BufferCount);



    AslGbl_ParseOpCount = 0;
    AslGbl_ParseOpCacheNext = ((void*)0);
    AslGbl_ParseOpCacheLast = ((void*)0);
    AslGbl_ParseTreeRoot = ((void*)0);




    BufferCount = 0;
    while (AslGbl_FieldCacheList)
    {
        Next = AslGbl_FieldCacheList->Next;
        ACPI_FREE (AslGbl_FieldCacheList);
        AslGbl_FieldCacheList = Next;
        BufferCount++;
    }

    DbgPrint (ASL_DEBUG_OUTPUT,
        "%u Fields, Buffer size: %u fields (%u bytes), %u Buffers\n",
        AslGbl_FieldCount, ASL_FIELD_CACHE_SIZE,
        ((UINT32) sizeof (DT_FIELD) * ASL_FIELD_CACHE_SIZE), BufferCount);



    AslGbl_FieldCount = 0;
    AslGbl_FieldCacheNext = ((void*)0);
    AslGbl_FieldCacheLast = ((void*)0);




    BufferCount = 0;
    while (AslGbl_SubtableCacheList)
    {
        Next = AslGbl_SubtableCacheList->Next;
        ACPI_FREE (AslGbl_SubtableCacheList);
        AslGbl_SubtableCacheList = Next;
        BufferCount++;
    }

    DbgPrint (ASL_DEBUG_OUTPUT,
        "%u Subtables, Buffer size: %u subtables (%u bytes), %u Buffers\n",
        AslGbl_SubtableCount, ASL_SUBTABLE_CACHE_SIZE,
        ((UINT32) sizeof (DT_SUBTABLE) * ASL_SUBTABLE_CACHE_SIZE), BufferCount);



    AslGbl_SubtableCount = 0;
    AslGbl_SubtableCacheNext = ((void*)0);
    AslGbl_SubtableCacheLast = ((void*)0);
}
