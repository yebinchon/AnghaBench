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
typedef  int /*<<< orphan*/  u_int ;
struct pcb {int dummy; } ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 

CORE_ADDR
FUNC1(u_int cpuid)
{
#ifndef CROSS_DEBUGGER
	return (FUNC0(cpuid, sizeof(struct pcb)));
#else
	return -1;
#endif
}