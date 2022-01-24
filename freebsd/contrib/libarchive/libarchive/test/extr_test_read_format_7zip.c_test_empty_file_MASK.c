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
 int /*<<< orphan*/  FUNC9 (struct archive*) ; 
 int FUNC10 (struct archive*) ; 
 struct archive* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC13 (struct archive*,char const*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct archive*) ; 
 int /*<<< orphan*/  FUNC15 (struct archive*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char const*) ; 

__attribute__((used)) static void
FUNC21()
{
	const char *refname = "test_read_format_7zip_empty_file.7z";
	struct archive_entry *ae;
	struct archive *a;

	FUNC20(refname);
	FUNC16((a = FUNC11()) != NULL);
	FUNC18(a, ARCHIVE_OK, FUNC14(a));
	FUNC18(a, ARCHIVE_OK, FUNC15(a));
	FUNC18(a, ARCHIVE_OK,
	    FUNC13(a, refname, 10240));

	/* Verify regular empty. */
	FUNC18(a, ARCHIVE_OK, FUNC12(a, &ae));
	FUNC17((AE_IFREG | 0644), FUNC1(ae));
	FUNC19("empty", FUNC3(ae));
	FUNC17(86401, FUNC2(ae));
	FUNC17(0, FUNC4(ae));
	FUNC17(FUNC0(ae), 0);
	FUNC18(a, FUNC10(a), 0);

	FUNC17(1, FUNC5(a));

	/* End of archive. */
	FUNC18(a, ARCHIVE_EOF, FUNC12(a, &ae));

	/* Verify archive format. */
	FUNC18(a, ARCHIVE_FILTER_NONE, FUNC6(a, 0));
	FUNC18(a, ARCHIVE_FORMAT_7ZIP, FUNC7(a));

	/* Close the archive. */
	FUNC17(ARCHIVE_OK, FUNC8(a));
	FUNC17(ARCHIVE_OK, FUNC9(a));
}