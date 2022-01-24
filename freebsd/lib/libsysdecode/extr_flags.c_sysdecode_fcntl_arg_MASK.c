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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  F_GETLK 132 
#define  F_SETFD 131 
#define  F_SETFL 130 
#define  F_SETLK 129 
#define  F_SETLKW 128 
 int /*<<< orphan*/  fcntl_fd_arg ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,uintptr_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,uintptr_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,uintptr_t,int*) ; 

void
FUNC4(FILE *fp, int cmd, uintptr_t arg, int base)
{
	int rem;

	switch (cmd) {
	case F_SETFD:
		if (!FUNC2(fp, fcntl_fd_arg, arg))
		    FUNC1(fp, arg, base);
		break;
	case F_SETFL:
		if (!FUNC3(fp, arg, &rem))
			FUNC0(fp, "%#x", rem);
		else if (rem != 0)
			FUNC0(fp, "|%#x", rem);
		break;
	case F_GETLK:
	case F_SETLK:
	case F_SETLKW:
		FUNC0(fp, "%p", (void *)arg);
		break;
	default:
		FUNC1(fp, arg, base);
		break;
	}
}