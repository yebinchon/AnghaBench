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
 int /*<<< orphan*/  ARCHIVE_EOF ; 
 int /*<<< orphan*/  ARCHIVE_FILTER_NONE ; 
 int /*<<< orphan*/  ARCHIVE_FORMAT_7ZIP ; 
 int /*<<< orphan*/  ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*) ; 
 struct archive* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 

__attribute__((used)) static void
FUNC14()
{
	const char *refname = "test_read_format_7zip_empty_archive.7z";
	struct archive_entry *ae;
	struct archive *a;

	FUNC13(refname);
	FUNC10((a = FUNC5()) != NULL);
	FUNC12(a, ARCHIVE_OK, FUNC8(a));
	FUNC12(a, ARCHIVE_OK, FUNC9(a));
	FUNC12(a, ARCHIVE_OK,
	    FUNC7(a, refname, 10240));

	/* End of archive. */
	FUNC12(a, ARCHIVE_EOF, FUNC6(a, &ae));

	FUNC11(0, FUNC0(a));

	/* Verify archive format. */
	FUNC12(a, ARCHIVE_FILTER_NONE, FUNC1(a, 0));
	FUNC12(a, ARCHIVE_FORMAT_7ZIP, FUNC2(a));

	/* Close the archive. */
	FUNC11(ARCHIVE_OK, FUNC3(a));
	FUNC11(ARCHIVE_OK, FUNC4(a));
}