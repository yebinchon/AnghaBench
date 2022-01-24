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
typedef  size_t uint32_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC1 (size_t,int /*<<< orphan*/ ,int) ; 
 size_t* lzma_fastpos ; 

__attribute__((used)) static inline uint32_t
FUNC2(uint32_t dist)
{
	// If it is small enough, we can pick the result directly from
	// the precalculated table.
	if (dist < FUNC0(0, 0))
		return lzma_fastpos[dist];

	if (dist < FUNC0(0, 1))
		return FUNC1(dist, 0, 1);

	return FUNC1(dist, 0, 2);
}