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
struct req {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FOCUS_NONE ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct req*,char const*) ; 
 char* FUNC9 (char const*,char) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (struct req*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 

__attribute__((used)) static void
FUNC13(struct req *req, const char *fullpath)
{
	char		*manpath;
	const char	*file;

	if ((file = FUNC9(fullpath, '/')) == NULL) {
		FUNC3(
		    "You did not specify a page to show.");
		return;
	}
	manpath = FUNC2(fullpath, file - fullpath);
	file++;

	if ( ! FUNC11(req, manpath)) {
		FUNC3(
		    "You specified an invalid manpath.");
		FUNC1(manpath);
		return;
	}

	/*
	 * Begin by chdir()ing into the manpath.
	 * This way we can pick up the database files, which are
	 * relative to the manpath root.
	 */

	if (FUNC0(manpath) == -1) {
		FUNC12("chdir %s", manpath);
		FUNC4();
		FUNC1(manpath);
		return;
	}
	FUNC1(manpath);

	if ( ! FUNC10(file)) {
		FUNC3(
		    "You specified an invalid manual file.");
		return;
	}

	FUNC5(200, NULL, file);
	FUNC7(req, FOCUS_NONE);
	FUNC8(req, file);
	FUNC6();
}