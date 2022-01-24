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
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 int AE_IFLNK ; 
 int AE_IFREG ; 
 int ARCHIVE_EOF ; 
 int ARCHIVE_FILTER_NONE ; 
 int ARCHIVE_FORMAT_7ZIP ; 
 int ARCHIVE_OK ; 
 int FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct archive*) ; 
 int FUNC12 (struct archive*) ; 
 struct archive* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC15 (struct archive*,char const*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct archive*) ; 
 int /*<<< orphan*/  FUNC17 (struct archive*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char const*) ; 

__attribute__((used)) static void
FUNC24()
{
	const char *refname = "test_read_format_7zip_symbolic_name.7z";
	struct archive_entry *ae;
	struct archive *a;
	char buff[128];

	FUNC23(refname);
	FUNC18((a = FUNC13()) != NULL);
	FUNC20(a, ARCHIVE_OK, FUNC16(a));
	FUNC20(a, ARCHIVE_OK, FUNC17(a));
	FUNC20(a, ARCHIVE_OK,
	    FUNC15(a, refname, 10240));

	/* Verify regular file1. */
	FUNC20(a, ARCHIVE_OK, FUNC14(a, &ae));
	FUNC19((AE_IFREG | 0644), FUNC1(ae));
	FUNC22("file1", FUNC3(ae));
	FUNC19(86401, FUNC2(ae));
	FUNC19(32, FUNC4(ae));
	FUNC19(FUNC0(ae), 0);
	FUNC20(a, FUNC12(a), 0);
	FUNC19(32, FUNC10(a, buff, sizeof(buff)));
	FUNC21(buff, "hellohellohello\nhellohellohello\n", 32);

	/* Verify symbolic-link symlinkfile. */
	FUNC20(a, ARCHIVE_OK, FUNC14(a, &ae));
	FUNC19((AE_IFLNK | 0755), FUNC1(ae));
	FUNC22("symlinkfile", FUNC3(ae));
	FUNC22("file1", FUNC5(ae));
	FUNC19(86401, FUNC2(ae));
	FUNC19(FUNC0(ae), 0);
	FUNC20(a, FUNC12(a), 0);

	FUNC19(2, FUNC6(a));

	/* End of archive. */
	FUNC20(a, ARCHIVE_EOF, FUNC14(a, &ae));

	/* Verify archive format. */
	FUNC20(a, ARCHIVE_FILTER_NONE, FUNC7(a, 0));
	FUNC20(a, ARCHIVE_FORMAT_7ZIP, FUNC8(a));

	/* Close the archive. */
	FUNC19(ARCHIVE_OK, FUNC9(a));
	FUNC19(ARCHIVE_OK, FUNC11(a));
}