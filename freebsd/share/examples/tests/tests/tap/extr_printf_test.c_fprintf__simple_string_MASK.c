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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 size_t FUNC4 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (char*,char const*) ; 
 size_t FUNC9 (char const*) ; 

__attribute__((used)) static void
FUNC10(void)
{
	FILE *file;
	char buffer[128];
	size_t length;
	const char *contents = "This is a message\n";

	file = FUNC2("test.txt", "w+");
	if (FUNC3(file, "%s", contents) <= 0) {
		FUNC0("fprintf failed to write to file");
		FUNC7(2);
		return;
	}
	FUNC5();
	FUNC6(file);
	length = FUNC4(buffer, 1, sizeof(buffer) - 1, file);
	if (length != FUNC9(contents)) {
		FUNC0("fread failed");
		FUNC7(1);
		return;
	}
	FUNC5();
	buffer[length] = '\0';
	FUNC1(file);

	if (FUNC8(buffer, contents) != 0)
		FUNC0("Written and read data differ");
	else
		FUNC5();

	/* Of special note here is that we are NOT deleting the temporary
	 * files we created in this test.  Kyua takes care of this cleanup
	 * automatically and tests can (and should) rely on this behavior. */
}