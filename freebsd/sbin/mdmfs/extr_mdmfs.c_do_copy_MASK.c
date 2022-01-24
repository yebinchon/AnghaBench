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
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 

__attribute__((used)) static void
FUNC4(const char *mtpoint, const char *skel)
{
	int rv;

	rv = FUNC0(skel);
	if (rv != 0)
		FUNC1(1, "chdir to %s", skel);
	rv = FUNC3(NULL, "/bin/pax -rw -pe . %s", mtpoint);
	if (rv != 0)
		FUNC2(1, "skel copy failed");
}