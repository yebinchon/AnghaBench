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
 uintptr_t curcpu ; 
 void* hst_cpu_tsc ; 
 void* FUNC0 () ; 
 void* tgt_cpu_tsc ; 

__attribute__((used)) static void
FUNC1(void *arg)
{
	uintptr_t cpu = (uintptr_t) arg;

	if (cpu == curcpu)
		tgt_cpu_tsc = FUNC0();
	else
		hst_cpu_tsc = FUNC0();
}