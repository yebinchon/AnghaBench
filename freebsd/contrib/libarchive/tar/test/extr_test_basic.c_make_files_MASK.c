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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC10(void)
{
	FILE *f;

	/* File with 10 bytes content. */
	f = FUNC8("file", "wb");
	FUNC0(f != NULL);
	FUNC1(10, FUNC9("123456789", 1, 10, f));
	FUNC7(f);

	/* hardlink to above file. */
	FUNC4("linkfile", "file");
	FUNC2("file", "linkfile");

	/* Symlink to above file. */
	if (FUNC6())
		FUNC5("symlink", "file", 0);

	/* Directory. */
	FUNC3("dir", 0775);

	return FUNC6()
	    ? "file linkfile symlink dir"
	    : "file linkfile dir";
}