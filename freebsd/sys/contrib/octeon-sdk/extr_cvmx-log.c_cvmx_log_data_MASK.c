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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_LOG_TYPE_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(uint64_t size_in_dwords, const uint64_t *data)
{
    if (size_in_dwords > 255)
        size_in_dwords = 255;

    FUNC1(FUNC0(CVMX_LOG_TYPE_DATA, size_in_dwords));
    while (size_in_dwords--)
        FUNC1(*data++);
}