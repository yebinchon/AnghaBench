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
typedef  int /*<<< orphan*/  register_t ;
struct TYPE_3__ {int /*<<< orphan*/ * fbtp_patchpoint; } ;
typedef  TYPE_1__ fbt_probe_t ;
typedef  int /*<<< orphan*/  fbt_patchval_t ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void
FUNC4(fbt_probe_t *fbt, fbt_patchval_t val)
{
	register_t intr;
	bool old_wp;

	intr = FUNC1();
	old_wp = FUNC0();
	*fbt->fbtp_patchpoint = val;
	FUNC3(old_wp);
	FUNC2(intr);
}