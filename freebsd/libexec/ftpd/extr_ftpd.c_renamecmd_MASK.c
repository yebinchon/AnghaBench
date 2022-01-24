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
struct stat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ guest ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char*) ; 
 scalar_t__ FUNC5 (char*,struct stat*) ; 

void
FUNC6(char *from, char *to)
{
	struct stat st;

	FUNC0("rename", from, to);

	if (guest && (FUNC5(to, &st) == 0)) {
		FUNC4(550, "%s: permission denied.", to);
		return;
	}

	if (FUNC3(from, to) < 0)
		FUNC2(550, "rename");
	else
		FUNC1("RNTO");
}