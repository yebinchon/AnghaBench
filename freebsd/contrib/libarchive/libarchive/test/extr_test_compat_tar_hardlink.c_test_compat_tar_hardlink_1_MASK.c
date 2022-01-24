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
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_EOF ; 
 int /*<<< orphan*/  ARCHIVE_FILTER_NONE ; 
 int /*<<< orphan*/  ARCHIVE_FORMAT_TAR ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*) ; 
 int FUNC7 (struct archive*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct archive*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*) ; 
 struct archive* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC13 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct archive*) ; 
 int /*<<< orphan*/  FUNC15 (struct archive*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 

__attribute__((used)) static void
FUNC21(void)
{
	char name[] = "test_compat_tar_hardlink_1.tar";
	struct archive_entry *ae;
	struct archive *a;

	FUNC16((a = FUNC11()) != NULL);
	FUNC18(a, ARCHIVE_OK, FUNC14(a));
	FUNC18(a, ARCHIVE_OK, FUNC15(a));
	FUNC20(name);
	FUNC18(a, ARCHIVE_OK, FUNC13(a, name, 10240));

	/* Read first entry, which is a regular file. */
	FUNC18(a, ARCHIVE_OK, FUNC12(a, &ae));
	FUNC19("xmcd-3.3.2/docs_d/READMf",
		FUNC4(ae));
	FUNC19(NULL, FUNC1(ae));
	FUNC17(321, FUNC5(ae));
	FUNC17(1082575645, FUNC3(ae));
	FUNC17(1851, FUNC6(ae));
	FUNC17(3, FUNC0(ae));
	FUNC17(0100444, FUNC2(ae));

	/* Read second entry, which is a hard link at the end of archive. */
	FUNC18(a, ARCHIVE_OK, FUNC12(a, &ae));
	FUNC19("xmcd-3.3.2/README",
		FUNC4(ae));
	FUNC19(
		"xmcd-3.3.2/docs_d/READMf",
		FUNC1(ae));
	FUNC17(0, FUNC5(ae));
	FUNC17(1082575645, FUNC3(ae));
	FUNC17(1851, FUNC6(ae));
	FUNC17(3, FUNC0(ae));
	FUNC17(0100444, FUNC2(ae));

	/* Verify the end-of-archive. */
	/*
	 * This failed in libarchive 2.4.12 because the tar reader
	 * tried to obey the size field for the hard link and ended
	 * up running past the end of the file.
	 */
	FUNC18(a, ARCHIVE_EOF, FUNC12(a, &ae));

	/* Verify that the format detection worked. */
	FUNC17(FUNC7(a, 0), ARCHIVE_FILTER_NONE);
	FUNC17(FUNC8(a), ARCHIVE_FORMAT_TAR);

	FUNC17(ARCHIVE_OK, FUNC9(a));
	FUNC17(ARCHIVE_OK, FUNC10(a));
}