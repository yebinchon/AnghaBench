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
struct thread {int dummy; } ;
struct savefpu {int dummy; } ;
struct TYPE_3__ {char* mc_fpstate; size_t mc_xfpustate_len; int /*<<< orphan*/  mc_flags; int /*<<< orphan*/  mc_fpformat; int /*<<< orphan*/  mc_ownedfp; } ;
typedef  TYPE_1__ mcontext_t ;

/* Variables and functions */
 int /*<<< orphan*/  _MC_HASFPXSTATE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int cpu_max_ext_state_size ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 
 scalar_t__ FUNC4 (struct thread*) ; 
 int /*<<< orphan*/  use_xsave ; 

__attribute__((used)) static void
FUNC5(struct thread *td, mcontext_t *mcp, char *xfpusave,
    size_t xfpusave_len)
{
	size_t max_len, len;

	mcp->mc_ownedfp = FUNC3(td);
	FUNC0(FUNC4(td), &mcp->mc_fpstate[0],
	    sizeof(mcp->mc_fpstate));
	mcp->mc_fpformat = FUNC2();
	if (!use_xsave || xfpusave_len == 0)
		return;
	max_len = cpu_max_ext_state_size - sizeof(struct savefpu);
	len = xfpusave_len;
	if (len > max_len) {
		len = max_len;
		FUNC1(xfpusave + max_len, len - max_len);
	}
	mcp->mc_flags |= _MC_HASFPXSTATE;
	mcp->mc_xfpustate_len = len;
	FUNC0(FUNC4(td) + 1, xfpusave, len);
}