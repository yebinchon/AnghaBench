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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  CVMX_LOG_TYPE_STRUCTURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(const char *type, void *data, int size_in_bytes)
{
    uint64_t size_in_dwords = (size_in_bytes + 7) >> 3;
    uint64_t *ptr = (uint64_t*)data;

    if (size_in_dwords > 254)
        size_in_dwords = 254;

    FUNC2(FUNC1(CVMX_LOG_TYPE_STRUCTURE, size_in_dwords + 1));
    FUNC2(FUNC0(type));
    while (size_in_dwords--)
        FUNC2(*ptr++);
}