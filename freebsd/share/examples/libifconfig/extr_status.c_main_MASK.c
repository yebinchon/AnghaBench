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
typedef  int /*<<< orphan*/  ifconfig_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  print_iface ; 

int
FUNC5(int argc, char *argv[])
{
	ifconfig_handle_t *lifh;

	if (argc != 1) {
		FUNC1(1, "Usage: example_status");
	}

	lifh = FUNC4();
	if (lifh == NULL) {
		FUNC1(1, "Failed to open libifconfig handle.");
	}

	if (FUNC3(lifh, print_iface, NULL) != 0) {
		FUNC0(1, "Failed to get interfaces");
	}

	FUNC2(lifh);
	lifh = NULL;
	return (-1);
}