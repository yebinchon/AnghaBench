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
typedef  int /*<<< orphan*/  input ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 

void
FUNC8(void)
{
	static char	input[256];			/* big enough? */

	FUNC3();

	FUNC6("\n");

	/*
	 * Before interacting, we might want to autoboot.
	 */
	FUNC0();

	/*
	 * Not autobooting, go manual
	 */
	FUNC6("\nType '?' for a list of commands, 'help' for more detailed help.\n");
	if (FUNC1("prompt") == NULL)
		FUNC7("prompt", "${interpret}", 1);
	if (FUNC1("interpret") == NULL)
		FUNC7("interpret", "OK", 1);

	for (;;) {
		input[0] = '\0';
		FUNC2();
		FUNC5(input, sizeof(input));
		FUNC4(input);
	}
}