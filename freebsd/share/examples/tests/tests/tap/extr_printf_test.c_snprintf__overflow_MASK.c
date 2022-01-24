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
 int FUNC3 (char*,int,char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static void
FUNC5(void)
{
	char buffer[10];

	if (FUNC3(buffer, sizeof(buffer), "0123456789abcdef") != 16) {
		FUNC0("snprintf did not return the expected "
		    "number of characters");
		FUNC2(1);
		return;
	}
	FUNC1();

	if (FUNC4(buffer, "012345678") != 0)
		FUNC0("Bad formatting: got %s", buffer);
	else
		FUNC1();
}