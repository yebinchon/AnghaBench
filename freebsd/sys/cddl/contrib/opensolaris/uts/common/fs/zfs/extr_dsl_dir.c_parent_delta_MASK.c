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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  dsl_dir_t ;
struct TYPE_2__ {int /*<<< orphan*/  dd_reserved; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int64_t
FUNC2(dsl_dir_t *dd, uint64_t used, int64_t delta)
{
	uint64_t old_accounted = FUNC0(used, FUNC1(dd)->dd_reserved);
	uint64_t new_accounted =
	    FUNC0(used + delta, FUNC1(dd)->dd_reserved);
	return (new_accounted - old_accounted);
}