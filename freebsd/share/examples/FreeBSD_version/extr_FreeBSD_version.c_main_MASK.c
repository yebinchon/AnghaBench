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
 int __FreeBSD_version ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

int
FUNC2(void) {
	FUNC1("Compilation release date: %d\n", __FreeBSD_version);
#if __FreeBSD_version >= 199408
	printf("Execution environment release date: %d\n", getosreldate());
#else
	FUNC1("Execution environment release date: can't tell\n");
#endif
	return (0);
}