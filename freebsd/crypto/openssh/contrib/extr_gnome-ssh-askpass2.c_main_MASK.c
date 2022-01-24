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
 int /*<<< orphan*/  _IONBF ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (char*,char**) ; 
 int /*<<< orphan*/  FUNC3 (int*,char***) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC6(int argc, char **argv)
{
	char *message;
	int result;

	FUNC3(&argc, &argv);

	if (argc > 1) {
		message = FUNC2(" ", argv + 1);
	} else {
		message = FUNC1("Enter your OpenSSH passphrase:");
	}

	FUNC5(stdout, 0, _IONBF, 0);
	result = FUNC4(message);
	FUNC0(message);

	return (result);
}