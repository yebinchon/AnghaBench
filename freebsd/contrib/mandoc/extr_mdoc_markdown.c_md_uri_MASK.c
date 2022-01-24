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
 scalar_t__ outcount ; 
 int /*<<< orphan*/  FUNC0 (char*,char const) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char const) ; 

__attribute__((used)) static void
FUNC3(const char *s)
{
	while (*s != '\0') {
		if (FUNC2("%()<>", *s) != NULL) {
			FUNC0("%%%2.2hhX", *s);
			outcount += 3;
		} else {
			FUNC1(*s);
			outcount++;
		}
		s++;
	}
}