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
struct heim_base {scalar_t__ ref_cnt; } ;

/* Variables and functions */
 struct heim_base* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (scalar_t__*) ; 
 scalar_t__ heim_base_atomic_max ; 
 scalar_t__ FUNC3 (void*) ; 

void *
FUNC4(void *ptr)
{
    struct heim_base *p = FUNC0(ptr);

    if (ptr == NULL || FUNC3(ptr))
	return ptr;

    if (p->ref_cnt == heim_base_atomic_max)
	return ptr;

    if ((FUNC2(&p->ref_cnt) - 1) == 0)
	FUNC1("resurection");
    return ptr;
}