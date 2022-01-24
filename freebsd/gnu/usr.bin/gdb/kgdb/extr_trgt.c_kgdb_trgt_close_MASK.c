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
struct TYPE_2__ {int /*<<< orphan*/ * to_sections_end; int /*<<< orphan*/ * to_sections; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  inferior_ptid ; 
 TYPE_1__ kgdb_trgt_ops ; 
 int /*<<< orphan*/ * kvm ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  null_ptid ; 
 int /*<<< orphan*/ * vmcore ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(int quitting)
{

	if (kvm != NULL) {		
		inferior_ptid = null_ptid;
		FUNC0();
		if (FUNC1(kvm) != 0)
			FUNC3("cannot close \"%s\": %s", vmcore,
			    FUNC2(kvm));
		kvm = NULL;
		FUNC4(vmcore);
		vmcore = NULL;
		if (kgdb_trgt_ops.to_sections) {
			FUNC4(kgdb_trgt_ops.to_sections);
			kgdb_trgt_ops.to_sections = NULL;
			kgdb_trgt_ops.to_sections_end = NULL;
		}
	}
}