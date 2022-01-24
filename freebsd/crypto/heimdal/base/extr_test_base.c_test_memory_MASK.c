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
 void* FUNC0 (int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/ * memory_free ; 

__attribute__((used)) static int
FUNC3(void)
{
    void *ptr;

    ptr = FUNC0(10, "memory", memory_free);

    FUNC2(ptr);
    FUNC1(ptr);

    FUNC2(ptr);
    FUNC1(ptr);

    FUNC1(ptr);

    ptr = FUNC0(10, "memory", NULL);
    FUNC1(ptr);

    return 0;
}