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
 int TC_BLACK ; 
 int TC_BLUE ; 
 int TC_BROWN ; 
 int TC_CYAN ; 
 int TC_GREEN ; 
 int TC_MAGENTA ; 
 int TC_RED ; 
 int TC_WHITE ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static bool
FUNC1(const char *name, int *val)
{
	if (FUNC0(name, "black") == 0) {
		*val = TC_BLACK;
		return (true);
	}
	if (FUNC0(name, "red") == 0) {
		*val = TC_RED;
		return (true);
	}
	if (FUNC0(name, "green") == 0) {
		*val = TC_GREEN;
		return (true);
	}
	if (FUNC0(name, "brown") == 0) {
		*val = TC_BROWN;
		return (true);
	}
	if (FUNC0(name, "blue") == 0) {
		*val = TC_BLUE;
		return (true);
	}
	if (FUNC0(name, "magenta") == 0) {
		*val = TC_MAGENTA;
		return (true);
	}
	if (FUNC0(name, "cyan") == 0) {
		*val = TC_CYAN;
		return (true);
	}
	if (FUNC0(name, "white") == 0) {
		*val = TC_WHITE;
		return (true);
	}
	return (false);
}