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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_INTERLEAVE ; 
 int FUNC0 (int,int) ; 

__attribute__((used)) static uint64_t FUNC1(uint64_t val, int offset)
{
    if (offset == 0) {
        return val;
    } else if (!BIT_INTERLEAVE) {
        return (val << offset) | (val >> (64-offset));
    } else {
        uint32_t hi = (uint32_t)(val >> 32), lo = (uint32_t)val;

        if (offset & 1) {
            uint32_t tmp = hi;

            offset >>= 1;
            hi = FUNC0(lo, offset);
            lo = FUNC0(tmp, offset + 1);
        } else {
            offset >>= 1;
            lo = FUNC0(lo, offset);
            hi = FUNC0(hi, offset);
        }

        return ((uint64_t)hi << 32) | lo;
    }
}