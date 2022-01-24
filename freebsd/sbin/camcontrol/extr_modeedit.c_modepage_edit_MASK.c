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
 char* DEFAULT_EDITOR ; 
 int /*<<< orphan*/  EX_CANTCREAT ; 
 int /*<<< orphan*/  EX_NOINPUT ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_UNAVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  (*) ()) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * edit_file ; 
 char* edit_path ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 char* FUNC11 (scalar_t__) ; 
 int FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,char const*,char*) ; 
 int /*<<< orphan*/ * stdin ; 
 scalar_t__ FUNC16 (char const*) ; 
 int FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 

__attribute__((used)) static void
FUNC19(void)
{
	const char *editor;
	char *commandline;
	int fd;
	int written;

	if (!FUNC10(FUNC6(stdin))) {
		/* Not a tty, read changes from stdin. */
		FUNC13(stdin);
		return;
	}

	/* Lookup editor to invoke. */
	if ((editor = FUNC9("EDITOR")) == NULL)
		editor = DEFAULT_EDITOR;

	/* Create temp file for editor to modify. */
	if ((fd = FUNC12(edit_path)) == -1)
		FUNC3(EX_CANTCREAT, "mkstemp failed");

	FUNC0(cleanup_editfile);

	if ((edit_file = FUNC5(fd, "w")) == NULL)
		FUNC2(EX_NOINPUT, "%s", edit_path);

	written = FUNC14(edit_file, 1);

	FUNC4(edit_file);
	edit_file = NULL;

	if (written == 0) {
		FUNC18("no editable entries");
		FUNC1();
		return;
	}

	/*
	 * Allocate memory to hold the command line (the 2 extra characters
	 * are to hold the argument separator (a space), and the terminating
	 * null character.
	 */
	commandline = FUNC11(FUNC16(editor) + FUNC16(edit_path) + 2);
	if (commandline == NULL)
		FUNC2(EX_OSERR, NULL);
	FUNC15(commandline, "%s %s", editor, edit_path);

	/* Invoke the editor on the temp file. */
	if (FUNC17(commandline) == -1)
		FUNC2(EX_UNAVAILABLE, "could not invoke %s", editor);
	FUNC8(commandline);

	if ((edit_file = FUNC7(edit_path, "r")) == NULL)
		FUNC2(EX_NOINPUT, "%s", edit_path);

	/* Read any changes made to the temp file. */
	FUNC13(edit_file);

	FUNC1();
}