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
typedef  int /*<<< orphan*/  uid_t ;

/* Variables and functions */
 scalar_t__ dochroot ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ guest ; 
 scalar_t__ logged_in ; 
 int /*<<< orphan*/ * pw ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ttyline ; 

__attribute__((used)) static void
FUNC3(void)
{

	if (FUNC2((uid_t)0) < 0)
		FUNC0("Failed to seteuid");
	if (logged_in)
		FUNC1(ttyline, "", "");
	pw = NULL;
	logged_in = 0;
	guest = 0;
	dochroot = 0;
}