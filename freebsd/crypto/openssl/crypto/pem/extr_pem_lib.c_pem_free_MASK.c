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
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t) ; 
 unsigned int PEM_FLAG_SECURE ; 

__attribute__((used)) static void FUNC2(void *p, unsigned int flags, size_t num)
{
    if (flags & PEM_FLAG_SECURE)
        FUNC1(p, num);
    else
        FUNC0(p);
}