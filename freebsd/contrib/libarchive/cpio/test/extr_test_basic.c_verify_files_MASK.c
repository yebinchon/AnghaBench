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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

__attribute__((used)) static void
FUNC8(const char *msg)
{
	/*
	 * Verify unpacked files.
	 */

	/* Regular file with 2 links. */
	FUNC7(msg);
	FUNC4("file", 0644);
	FUNC7(msg);
	FUNC1("file", 10);
	FUNC7(msg);
	FUNC0("file", 2);

	/* Another name for the same file. */
	FUNC7(msg);
	FUNC3("linkfile", "file");

	/* Symlink */
	if (FUNC6())
		FUNC5("symlink", "file", 0);

	/* Another file with 1 link and different permissions. */
	FUNC7(msg);
	FUNC4("file2", 0777);
	FUNC7(msg);
	FUNC1("file2", 10);
	FUNC7(msg);
	FUNC0("file2", 1);

	/* dir */
	FUNC2("dir", 0775);
}