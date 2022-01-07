
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void** pointer; void* old_value; } ;


 size_t MAX_POINTERS ;
 int TEST_FAIL_MESSAGE (char*) ;
 size_t pointer_index ;
 TYPE_1__* pointer_store ;

void UnityPointer_Set(void ** pointer, void * newValue)
{
    if (pointer_index >= MAX_POINTERS)
        TEST_FAIL_MESSAGE("Too many pointers set");

    pointer_store[pointer_index].pointer = pointer;
    pointer_store[pointer_index].old_value = *pointer;
    *pointer = newValue;
    pointer_index++;
}
