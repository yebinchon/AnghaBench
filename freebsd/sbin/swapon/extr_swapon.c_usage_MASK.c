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
#define  SWAPCTL 130 
#define  SWAPOFF 129 
#define  SWAPON 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC2 () ; 
 int orig_prog ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC3(void)
{

	FUNC1(stderr, "usage: %s ", FUNC2());
	switch(orig_prog) {
	case SWAPON:
	    FUNC1(stderr, "[-F fstab] -aLq | [-E] file ...\n");
	    break;
	case SWAPOFF:
	    FUNC1(stderr, "[-F fstab] -aLq | file ...\n");
	    break;
	case SWAPCTL:
	    FUNC1(stderr, "[-AghklmsU] [-a file ... | -d file ...]\n");
	    break;
	}
	FUNC0(1);
}