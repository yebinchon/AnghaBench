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
 int /*<<< orphan*/  FSHTTY ; 
 scalar_t__ opgrp ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ shpgrp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ tpgrp ; 

void
FUNC3(void)
{
#ifdef BSDJOBS
    if (tpgrp > 0 && opgrp != shpgrp) {
	(void) setpgid(0, opgrp);
	(void) tcsetpgrp(FSHTTY, opgrp);
	(void) resetdisc(FSHTTY);
    }
#endif /* BSDJOBS */
}