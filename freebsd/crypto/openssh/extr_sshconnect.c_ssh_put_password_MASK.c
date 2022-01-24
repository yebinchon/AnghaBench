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
 int FUNC0 (scalar_t__,int) ; 
 int SSH_BUG_PASSWORDPAD ; 
 int datafellows ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 scalar_t__ FUNC6 (char*) ; 
 char* FUNC7 (int,int) ; 

void
FUNC8(char *password)
{
	int size;
	char *padded;

	if (datafellows & SSH_BUG_PASSWORDPAD) {
		FUNC3(password);
		return;
	}
	size = FUNC0(FUNC6(password) + 1, 32);
	padded = FUNC7(1, size);
	FUNC5(padded, password, size);
	FUNC4(padded, size);
	FUNC1(padded, size);
	FUNC2(padded);
}