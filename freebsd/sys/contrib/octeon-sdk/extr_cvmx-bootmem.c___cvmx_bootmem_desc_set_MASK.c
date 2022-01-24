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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static inline void FUNC2(uint64_t base, int offset, int size, uint64_t value)
{
    base = (1ull << 63) | (base + offset);
    switch (size)
    {
        case 4:
            FUNC0(base, value);
            break;
        case 8:
            FUNC1(base, value);
            break;
        default:
            break;
    }
}