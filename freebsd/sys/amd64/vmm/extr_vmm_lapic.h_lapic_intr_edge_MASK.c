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
struct vm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LAPIC_TRIG_EDGE ; 
 int FUNC0 (struct vm*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline int
FUNC1(struct vm *vm, int cpu, int vector)
{

	return (FUNC0(vm, cpu, vector, LAPIC_TRIG_EDGE));
}