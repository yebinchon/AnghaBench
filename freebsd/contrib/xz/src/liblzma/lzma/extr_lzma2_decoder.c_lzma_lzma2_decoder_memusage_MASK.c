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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  lzma_lzma2_coder ;

/* Variables and functions */
 scalar_t__ FUNC0 (void const*) ; 

extern uint64_t
FUNC1(const void *options)
{
	return sizeof(lzma_lzma2_coder)
			+ FUNC0(options);
}