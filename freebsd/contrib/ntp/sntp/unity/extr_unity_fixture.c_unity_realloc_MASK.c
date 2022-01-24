#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t size; } ;
typedef  TYPE_1__ Guard ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (size_t) ; 

void* FUNC6(void * oldMem, size_t size)
{
    Guard* guard = (Guard*)oldMem;
//    char* memAsChar = (char*)oldMem;
    void* newMem;

    if (oldMem == 0)
        return FUNC5(size);

    guard--;
    if (FUNC1(oldMem))
    {
        FUNC3(oldMem);
        FUNC0("Buffer overrun detected during realloc()");
    }

    if (size == 0)
    {
        FUNC3(oldMem);
        return 0;
    }

    if (guard->size >= size)
        return oldMem;

    newMem = FUNC5(size);
    FUNC2(newMem, oldMem, guard->size);
    FUNC4(oldMem);
    return newMem;
}