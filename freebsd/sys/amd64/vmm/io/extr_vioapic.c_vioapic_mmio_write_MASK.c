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
typedef  int /*<<< orphan*/  uint64_t ;
struct vioapic {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct vioapic*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 struct vioapic* FUNC1 (void*) ; 

int
FUNC2(void *vm, int vcpuid, uint64_t gpa, uint64_t wval,
    int size, void *arg)
{
	int error;
	struct vioapic *vioapic;

	vioapic = FUNC1(vm);
	error = FUNC0(vioapic, vcpuid, gpa, &wval, size, false);
	return (error);
}