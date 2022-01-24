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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 

__attribute__((used)) static void
FUNC10(const char *target)
{
	FUNC0(target);

	/* Regular file with 2 links. */
	FUNC9("%s", target);
	FUNC6("file", -1);
	FUNC9("%s", target);
	FUNC3("file", 10);
	FUNC9("%s", target);
	FUNC1("123456789", 10, "file");
	FUNC9("%s", target);
	FUNC2("file", 2);

	/* Another name for the same file. */
	FUNC9("%s", target);
	FUNC6("linkfile", -1);
	FUNC9("%s", target);
	FUNC3("linkfile", 10);
	FUNC1("123456789", 10, "linkfile");
	FUNC2("linkfile", 2);
	FUNC5("file", "linkfile");

	/* Symlink */
	if (FUNC8())
		FUNC7("symlink", "file", 0);

	/* dir */
	FUNC9("%s", target);
	FUNC4("dir", 0775);
	FUNC0("..");
}