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
 int /*<<< orphan*/  OCTEON_CN3XXX ; 
 int /*<<< orphan*/  OCTEON_CN5XXX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

int FUNC1(void)
{
    if (FUNC0(OCTEON_CN3XXX))
        return 32;
    else if (FUNC0(OCTEON_CN5XXX))
        return 64;
    else
        return 128;
}