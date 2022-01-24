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
struct rlimit {scalar_t__ rlim_max; scalar_t__ rlim_cur; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RLIMIT_CORE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct rlimit*) ; 

__attribute__((used)) static void
FUNC2(void)
{
	struct rlimit limits;

	limits.rlim_cur = 0;
	limits.rlim_max = 0;

	FUNC0(FUNC1(RLIMIT_CORE, &limits) == 0);
}