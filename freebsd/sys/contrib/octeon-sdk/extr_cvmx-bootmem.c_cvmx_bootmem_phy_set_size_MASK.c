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
typedef  unsigned long long uint64_t ;

/* Variables and functions */
 unsigned long long SIZE_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (unsigned long long,unsigned long long) ; 

__attribute__((used)) static void FUNC1(uint64_t addr, uint64_t size)
{
    FUNC0((addr + SIZE_OFFSET) | (1ull << 63), size);
}