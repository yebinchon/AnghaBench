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
struct rlimit {int rlim_max; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  RLIMIT_NOFILE ; 
 int RLIM_INFINITY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct rlimit*) ; 

__attribute__((used)) static int FUNC2(void)
{
	struct rlimit rlim;

	if (FUNC1(RLIMIT_NOFILE, &rlim) == 0) {
		if (rlim.rlim_max == RLIM_INFINITY)
			return 512;
		return FUNC0(rlim.rlim_max / 2, 512);
	}

	return 512;
}