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
 scalar_t__ MALLOC_DONT_FAIL ; 
 int /*<<< orphan*/  end ; 
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  malloc_count ; 
 scalar_t__ malloc_fail_countdown ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

void * FUNC3(size_t size)
{
    char* mem;
    Guard* guard;

    if (malloc_fail_countdown != MALLOC_DONT_FAIL)
    {
        if (malloc_fail_countdown == 0)
            return 0;
        malloc_fail_countdown--;
    }

    malloc_count++;

    guard = (Guard*)FUNC0(size + sizeof(Guard) + 4);
    guard->size = size;
    mem = (char*)&(guard[1]);
    FUNC1(&mem[size], end, FUNC2(end) + 1);

    return (void*)mem;
}