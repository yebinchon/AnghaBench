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
typedef  uintptr_t uint32_t ;

/* Variables and functions */
 uintptr_t VM_MIN_KERNEL_ADDRESS ; 

__attribute__((used)) static inline void *
FUNC0(uint32_t ctx)
{
	uintptr_t p;

	p = ctx;
	p = VM_MIN_KERNEL_ADDRESS + (p << 3);

	return ((void *)p);
}