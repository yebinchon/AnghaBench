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
typedef  int /*<<< orphan*/  uint32_t ;
struct module_env {int dummy; } ;
struct auth_xfer {int /*<<< orphan*/  lock; } ;
struct auth_master {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct auth_xfer*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct auth_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct auth_xfer*,struct module_env*,struct auth_master*) ; 

__attribute__((used)) static void
FUNC4(struct auth_xfer* xfr, struct module_env* env,
	int has_serial, uint32_t serial, struct auth_master* fromhost)
{
	/* if the serial of notify is older than we have, don't fetch
	 * a zone, we already have it */
	if(has_serial && !FUNC2(xfr, serial)) {
		FUNC0(&xfr->lock);
		return;
	}
	/* start new probe with this addr src, or note serial */
	if(!FUNC3(xfr, env, fromhost)) {
		/* not started because already in progress, note the serial */
		FUNC1(xfr, has_serial, serial);
		FUNC0(&xfr->lock);
	}
	/* successful end of start_probe unlocked xfr->lock */
}