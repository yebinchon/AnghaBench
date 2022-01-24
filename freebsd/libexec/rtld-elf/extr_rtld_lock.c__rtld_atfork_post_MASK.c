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
typedef  int /*<<< orphan*/  ls ;
struct TYPE_4__ {int lockstate; } ;
typedef  TYPE_1__ RtldLockState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  rtld_bind_lock ; 
 int /*<<< orphan*/  rtld_phdr_lock ; 

void
FUNC2(int *locks)
{
	RtldLockState ls[2];

	if (locks == NULL)
		return;

	FUNC0(ls, sizeof(ls));
	ls[0].lockstate = locks[2];
	ls[1].lockstate = locks[0];
	FUNC1(rtld_bind_lock, &ls[1]);
	FUNC1(rtld_phdr_lock, &ls[0]);
}