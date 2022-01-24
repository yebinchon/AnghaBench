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
 int /*<<< orphan*/  ATOMIC_RELAXED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* dss_base ; 
 int /*<<< orphan*/  dss_exhausted ; 
 int /*<<< orphan*/  dss_extending ; 
 int /*<<< orphan*/  dss_max ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  have_dss ; 

void
FUNC4(void) {
	FUNC2(have_dss);

	dss_base = FUNC3(0);
	FUNC0(&dss_extending, false, ATOMIC_RELAXED);
	FUNC0(&dss_exhausted, dss_base == (void *)-1, ATOMIC_RELAXED);
	FUNC1(&dss_max, dss_base, ATOMIC_RELAXED);
}