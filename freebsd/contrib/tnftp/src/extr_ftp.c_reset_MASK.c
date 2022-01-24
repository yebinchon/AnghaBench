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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  cin ; 
 int code ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void
FUNC5(int argc, char *argv[])
{
	int nfnd = 1;

	if (argc == 0 && argv != NULL) {
		FUNC0("usage: %s\n", argv[0]);
		code = -1;
		return;
	}
	while (nfnd > 0) {
		if ((nfnd = FUNC1(cin, NULL, 0)) < 0) {
			FUNC4("Error resetting connection");
			code = -1;
			FUNC3(0);
		} else if (nfnd)
			(void)FUNC2(0);
	}
}