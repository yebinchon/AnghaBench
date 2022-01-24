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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

void
FUNC3(const char *extras)
{
	const char *s;

	/* Any extra overlays supplied by pre-loader environment */
	if (extras != NULL && *extras != '\0') {
		FUNC2("Loading DTB overlays: '%s'\n", extras);
		FUNC0(extras);
	}

	/* Any overlays supplied by loader environment */
	s = FUNC1("fdt_overlays");
	if (s != NULL && *s != '\0') {
		FUNC2("Loading DTB overlays: '%s'\n", s);
		FUNC0(s);
	}
}