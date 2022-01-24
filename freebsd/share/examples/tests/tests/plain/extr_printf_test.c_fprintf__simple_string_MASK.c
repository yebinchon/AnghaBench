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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,char const*) ; 
 size_t FUNC5 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char*,char const*) ; 
 size_t FUNC8 (char const*) ; 

__attribute__((used)) static void
FUNC9(void)
{
	FILE *file;
	char buffer[128];
	size_t length;
	const char *contents = "This is a message\n";

	file = FUNC3("test.txt", "w+");
	if (FUNC4(file, "%s", contents) <= 0)
		FUNC0(EXIT_FAILURE, "fprintf failed to write to file");
	FUNC6(file);
	length = FUNC5(buffer, 1, sizeof(buffer) - 1, file);
	if (length != FUNC8(contents))
		FUNC0(EXIT_FAILURE, "fread failed");
	buffer[length] = '\0';
	FUNC2(file);

	if (FUNC7(buffer, contents) != 0)
		FUNC1(EXIT_FAILURE, "Written and read data differ");

	/* Of special note here is that we are NOT deleting the temporary
	 * files we created in this test.  Kyua takes care of this cleanup
	 * automatically and tests can (and should) rely on this behavior. */
}