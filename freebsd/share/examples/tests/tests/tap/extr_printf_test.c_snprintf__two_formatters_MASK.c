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
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (char*,int,char*,char*,char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static void
FUNC5(void)
{
	char buffer[128];

	if (FUNC3(buffer, sizeof(buffer), "%s, %s!", "Hello",
	    "tests") <= 0) {
		FUNC0("snprintf with two formatters failed");
		FUNC2(1);
	} else {
		FUNC1();
		if (FUNC4(buffer, "Hello, tests!") != 0)
			FUNC0("Bad formatting: got %s", buffer);
		else
			FUNC1();
	}
}