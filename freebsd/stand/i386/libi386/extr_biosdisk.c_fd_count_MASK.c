#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int addr; int eax; int edx; int /*<<< orphan*/  efl; int /*<<< orphan*/  ctl; } ;

/* Variables and functions */
 int MAXBDDEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V86_FLAGS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__ v86 ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int
FUNC3(void)
{
	int drive;

	for (drive = 0; drive < MAXBDDEV; drive++) {
		FUNC1(drive);

		v86.ctl = V86_FLAGS;
		v86.addr = 0x13;
		v86.eax = 0x1500;
		v86.edx = drive;
		FUNC2();

		if (FUNC0(v86.efl))
			break;

		if ((v86.eax & 0x300) == 0)
			break;
	}

	return (drive);
}