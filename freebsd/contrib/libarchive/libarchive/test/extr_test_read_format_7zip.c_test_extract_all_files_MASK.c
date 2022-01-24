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
 int AE_IFDIR ; 
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
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*) ; 
 int FUNC11 (struct archive*) ; 
 struct archive* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC14 (struct archive*,char const*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct archive*) ; 
 int /*<<< orphan*/  FUNC16 (struct archive*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char const*) ; 

__attribute__((used)) static void
FUNC23(const char *refname)
{
	struct archive_entry *ae;
	struct archive *a;
	char buff[128];

	FUNC22(refname);
	FUNC17((a = FUNC12()) != NULL);
	FUNC19(a, ARCHIVE_OK, FUNC15(a));
	FUNC19(a, ARCHIVE_OK, FUNC16(a));
	FUNC19(a, ARCHIVE_OK,
	    FUNC14(a, refname, 10240));

	/* Verify regular file1. */
	FUNC19(a, ARCHIVE_OK, FUNC13(a, &ae));
	FUNC18((AE_IFREG | 0644), FUNC1(ae));
	FUNC21("dir1/file1", FUNC3(ae));
	FUNC18(86401, FUNC2(ae));
	FUNC18(13, FUNC4(ae));
	FUNC18(FUNC0(ae), 0);
	FUNC19(a, FUNC11(a), 0);
	FUNC18(13, FUNC9(a, buff, sizeof(buff)));
	FUNC20(buff, "aaaaaaaaaaaa\n", 13);

	/* Verify regular file2. */
	FUNC19(a, ARCHIVE_OK, FUNC13(a, &ae));
	FUNC18((AE_IFREG | 0644), FUNC1(ae));
	FUNC21("file2", FUNC3(ae));
	FUNC18(86401, FUNC2(ae));
	FUNC18(26, FUNC4(ae));
	FUNC18(FUNC0(ae), 0);
	FUNC19(a, FUNC11(a), 0);
	FUNC18(26, FUNC9(a, buff, sizeof(buff)));
	FUNC20(buff, "aaaaaaaaaaaa\nbbbbbbbbbbbb\n", 26);

	/* Verify regular file3. */
	FUNC19(a, ARCHIVE_OK, FUNC13(a, &ae));
	FUNC18((AE_IFREG | 0644), FUNC1(ae));
	FUNC21("file3", FUNC3(ae));
	FUNC18(86401, FUNC2(ae));
	FUNC18(39, FUNC4(ae));
	FUNC18(FUNC0(ae), 0);
	FUNC19(a, FUNC11(a), 0);
	FUNC18(39, FUNC9(a, buff, sizeof(buff)));
	FUNC20(buff, "aaaaaaaaaaaa\nbbbbbbbbbbbb\ncccccccccccc\n", 39);

	/* Verify regular file4. */
	FUNC19(a, ARCHIVE_OK, FUNC13(a, &ae));
	FUNC18((AE_IFREG | 0644), FUNC1(ae));
	FUNC21("file4", FUNC3(ae));
	FUNC18(86401, FUNC2(ae));
	FUNC18(52, FUNC4(ae));
	FUNC18(FUNC0(ae), 0);
	FUNC19(a, FUNC11(a), 0);
	FUNC18(52, FUNC9(a, buff, sizeof(buff)));
	FUNC20(buff,
	    "aaaaaaaaaaaa\nbbbbbbbbbbbb\ncccccccccccc\ndddddddddddd\n", 52);

	/* Verify directory dir1. */
	FUNC19(a, ARCHIVE_OK, FUNC13(a, &ae));
	FUNC18((AE_IFDIR | 0755), FUNC1(ae));
	FUNC21("dir1/", FUNC3(ae));
	FUNC18(2764801, FUNC2(ae));
	FUNC18(FUNC0(ae), 0);
	FUNC19(a, FUNC11(a), 0);

	FUNC18(5, FUNC5(a));

	/* End of archive. */
	FUNC19(a, ARCHIVE_EOF, FUNC13(a, &ae));

	/* Verify archive format. */
	FUNC19(a, ARCHIVE_FILTER_NONE, FUNC6(a, 0));
	FUNC19(a, ARCHIVE_FORMAT_7ZIP, FUNC7(a));

	/* Close the archive. */
	FUNC18(ARCHIVE_OK, FUNC8(a));
	FUNC18(ARCHIVE_OK, FUNC10(a));
}