#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  program; } ;
typedef  TYPE_1__ kvm_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ) ; 
 void* FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void *
FUNC3(kvm_t *kd, size_t n)
{
	void *p;

	if ((p = FUNC1(n, sizeof(char))) == NULL)
		FUNC0(kd, kd->program, "can't allocate %zu bytes: %s",
			 n, FUNC2(errno));
	return (p);
}