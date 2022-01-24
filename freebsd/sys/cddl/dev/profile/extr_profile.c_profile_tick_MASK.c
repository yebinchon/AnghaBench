#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  prof_expected; int /*<<< orphan*/  prof_cyclic; scalar_t__ prof_interval; } ;
typedef  TYPE_1__ profile_probe_t ;

/* Variables and functions */
 int C_ABSOLUTE ; 
 int C_DIRECT_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void *arg)
{
	profile_probe_t *prof = arg;

	FUNC1(prof, 0);
	prof->prof_expected += prof->prof_interval;
	FUNC0(&prof->prof_cyclic,
	    prof->prof_expected, 0, C_DIRECT_EXEC | C_ABSOLUTE);
}