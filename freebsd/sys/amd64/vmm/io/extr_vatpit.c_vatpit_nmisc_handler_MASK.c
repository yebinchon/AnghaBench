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
typedef  scalar_t__ uint32_t ;
struct vm {int dummy; } ;
struct vatpit {int dummy; } ;

/* Variables and functions */
 scalar_t__ TMR2_OUT_STS ; 
 int /*<<< orphan*/  FUNC0 (struct vatpit*) ; 
 int /*<<< orphan*/  FUNC1 (struct vatpit*) ; 
 scalar_t__ FUNC2 (struct vatpit*,int) ; 
 struct vatpit* FUNC3 (struct vm*) ; 

int
FUNC4(struct vm *vm, int vcpuid, bool in, int port, int bytes,
    uint32_t *eax)
{
	struct vatpit *vatpit;

	vatpit = FUNC3(vm);

	if (in) {
			FUNC0(vatpit);
			if (FUNC2(vatpit, 2))
				*eax = TMR2_OUT_STS;
			else
				*eax = 0;

			FUNC1(vatpit);
	}

	return (0);
}