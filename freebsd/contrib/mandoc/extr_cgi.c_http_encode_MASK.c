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
 scalar_t__ FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char const) ; 

__attribute__((used)) static void
FUNC4(const char *p)
{
	for (; *p != '\0'; p++) {
		if (FUNC0((unsigned char)*p) == 0 &&
		    FUNC3("-._~", *p) == NULL)
			FUNC1("%%%2.2X", (unsigned char)*p);
		else
			FUNC2(*p);
	}
}