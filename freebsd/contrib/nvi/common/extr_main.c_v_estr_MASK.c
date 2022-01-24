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
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(
	char *name,
	int eno,
	char *msg)
{
	(void)FUNC0(stderr, "%s", name);
	if (msg != NULL)
		(void)FUNC0(stderr, ": %s", msg);
	if (eno)
		(void)FUNC0(stderr, ": %s", FUNC1(errno));
	(void)FUNC0(stderr, "\n");
}