
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int framelogEntry_t ;
struct TYPE_3__ {size_t capacity; int * entries; } ;
typedef TYPE_1__ ZSTD_frameLog ;


 size_t ERROR (int ) ;
 scalar_t__ malloc (int) ;
 int memory_allocation ;

size_t ZSTD_seekable_frameLog_allocVec(ZSTD_frameLog* fl)
{

    size_t const FRAMELOG_STARTING_CAPACITY = 16;
    fl->entries = (framelogEntry_t*)malloc(
            sizeof(framelogEntry_t) * FRAMELOG_STARTING_CAPACITY);
    if (fl->entries == ((void*)0)) return ERROR(memory_allocation);
    fl->capacity = FRAMELOG_STARTING_CAPACITY;

    return 0;
}
