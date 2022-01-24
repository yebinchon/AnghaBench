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
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 

__attribute__((used)) static int
FUNC2(void *a, void *b)
{
    int na, nb;

    if (FUNC0(a))
	na = FUNC1(a);
    else
	na = *(int *)a;

    if (FUNC0(b))
	nb = FUNC1(b);
    else
	nb = *(int *)b;

    return na - nb;
}