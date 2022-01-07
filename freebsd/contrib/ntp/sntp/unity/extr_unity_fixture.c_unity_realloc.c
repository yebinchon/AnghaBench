
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t size; } ;
typedef TYPE_1__ Guard ;


 int TEST_FAIL_MESSAGE (char*) ;
 scalar_t__ isOverrun (void*) ;
 int memcpy (void*,void*,size_t) ;
 int release_memory (void*) ;
 int unity_free (void*) ;
 void* unity_malloc (size_t) ;

void* unity_realloc(void * oldMem, size_t size)
{
    Guard* guard = (Guard*)oldMem;

    void* newMem;

    if (oldMem == 0)
        return unity_malloc(size);

    guard--;
    if (isOverrun(oldMem))
    {
        release_memory(oldMem);
        TEST_FAIL_MESSAGE("Buffer overrun detected during realloc()");
    }

    if (size == 0)
    {
        release_memory(oldMem);
        return 0;
    }

    if (guard->size >= size)
        return oldMem;

    newMem = unity_malloc(size);
    memcpy(newMem, oldMem, guard->size);
    unity_free(oldMem);
    return newMem;
}
