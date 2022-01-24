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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  custom_suffix ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

extern void
FUNC5(const char *suffix)
{
	// Empty suffix and suffixes having a directory separator are
	// rejected. Such suffixes would break things later.
	if (suffix[0] == '\0' || FUNC2(suffix))
		FUNC3(FUNC0("%s: Invalid filename suffix"), suffix);

	// Replace the old custom_suffix (if any) with the new suffix.
	FUNC1(custom_suffix);
	custom_suffix = FUNC4(suffix);
	return;
}