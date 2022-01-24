#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

void FUNC3(void * mem)
{
    int overrun = FUNC1(mem);//strcmp(&memAsChar[guard->size], end) != 0;
    FUNC2(mem);
    if (overrun)
    {
        FUNC0("Buffer overrun detected during free()");
    }
}