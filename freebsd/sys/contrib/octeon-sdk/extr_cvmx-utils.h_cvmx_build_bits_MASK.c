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
 int FUNC0 (int) ; 

__attribute__((used)) static inline uint64_t FUNC1(uint64_t high_bit, uint64_t low_bit, uint64_t value)
{
    return ((value & FUNC0(high_bit - low_bit + 1)) << low_bit);
}