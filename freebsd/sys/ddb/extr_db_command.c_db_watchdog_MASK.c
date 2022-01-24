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
typedef  int db_expr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int*) ; 
 int WD_INTERVAL ; 
 int WD_TO_NEVER ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int db_radix ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  watchdog_list ; 

__attribute__((used)) static void
FUNC5(db_expr_t dummy1, bool dummy2, db_expr_t dummy3, char *dummy4)
{
	db_expr_t old_radix, tout;
	int err, i;

	old_radix = db_radix;
	db_radix = 10;
	err = FUNC2(&tout);
	FUNC4();
	db_radix = old_radix;

	/* If no argument is provided the watchdog will just be disabled. */
	if (err == 0) {
		FUNC3("No argument provided, disabling watchdog\n");
		tout = 0;
	} else if ((tout & WD_INTERVAL) == WD_TO_NEVER) {
		FUNC1("Out of range watchdog interval\n");
		return;
	}
	FUNC0(watchdog_list, tout, &i);
}