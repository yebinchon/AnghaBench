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
struct vm {int /*<<< orphan*/  debug_cpus; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ *) ; 

int
FUNC1(struct vm *vm, int vcpuid)
{

	return (FUNC0(vcpuid, &vm->debug_cpus));
}