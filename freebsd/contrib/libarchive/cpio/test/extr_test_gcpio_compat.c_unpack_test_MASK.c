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
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,...) ; 
 int FUNC13 (char*,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  testprog ; 

__attribute__((used)) static void
FUNC14(const char *from, const char *options, const char *se)
{
	int r;

	/* Create a work dir named after the file we're unpacking. */
	FUNC8(from, 0775);
	FUNC0(from);

	/*
	 * Use cpio to unpack the sample archive
	 */
	FUNC11(from);
	r = FUNC13("%s -i %s < %s >unpack.out 2>unpack.err",
	    testprog, options, from);
	FUNC12("Error invoking %s -i %s < %s",
	    testprog, options, from);
	FUNC1(r, 0);

	/* Verify that nothing went to stderr. */
	if (FUNC10()) {
		FUNC12("Error invoking %s -i %s < %s",
		    testprog, options, from);
		FUNC9(se, "unpack.err");
	}

	/*
	 * Verify unpacked files.
	 */

	/* Regular file with 2 links. */
	FUNC6("file", 0644);
	FUNC12("%s", from);
	FUNC3("file", 10);
	FUNC3("linkfile", 10);
	FUNC12("%s", from);
	FUNC2("file", 2);

	/* Another name for the same file. */
	FUNC12("%s", from);
	FUNC5("linkfile", "file");
	FUNC3("file", 10);
	FUNC3("linkfile", 10);

	/* Symlink */
	if (FUNC10())
		FUNC7("symlink", "file", 0);

	/* dir */
	FUNC4("dir", 0775);

	FUNC0("..");
}