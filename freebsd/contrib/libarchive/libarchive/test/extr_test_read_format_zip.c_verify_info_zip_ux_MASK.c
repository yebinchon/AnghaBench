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
 int ARCHIVE_FAILED ; 
 int ARCHIVE_FILTER_NONE ; 
 int ARCHIVE_FORMAT_ZIP ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 char* FUNC4 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*) ; 
 scalar_t__ FUNC7 (struct archive*) ; 
 char* FUNC8 (struct archive*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct archive*) ; 
 int /*<<< orphan*/  FUNC12 (struct archive*) ; 
 int /*<<< orphan*/  FUNC13 (struct archive*,char**,int) ; 
 int /*<<< orphan*/  FUNC14 (struct archive*) ; 
 int FUNC15 (struct archive*) ; 
 int /*<<< orphan*/  FUNC16 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/ * FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char**,char*,int) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 

__attribute__((used)) static void
FUNC24(struct archive *a, int seek_checks)
{
	struct archive_entry *ae;
	char *buff[128];

	FUNC20(a, ARCHIVE_OK, FUNC16(a, &ae));
	FUNC22("file1", FUNC4(ae));
	FUNC19(1300668680, FUNC3(ae));
	FUNC19(18, FUNC5(ae));
	FUNC19(FUNC1(ae), 0);
	FUNC20(a, FUNC15(a), 0);
	if (seek_checks)
		FUNC19(AE_IFREG | 0644, FUNC2(ae));
	FUNC23("zip reader should read Info-ZIP New Unix Extra Field");
	FUNC19(1001, FUNC6(ae));
	FUNC19(1001, FUNC0(ae));
	if (FUNC17() != NULL) {
		FUNC23("archive_read_data() returns number of bytes read");
		FUNC19(18, FUNC13(a, buff, 19));
		FUNC21(buff, "hello\nhello\nhello\n", 18);
	} else {
		FUNC19(ARCHIVE_FAILED, FUNC13(a, buff, 19));
		FUNC22(FUNC8(a),
		    "Unsupported ZIP compression method (8: deflation)");
		FUNC18(FUNC7(a) != 0);
	}
	FUNC20(a, ARCHIVE_EOF, FUNC16(a, &ae));

	/* Verify the number of files read. */
	FUNC23("the archive file has just one file");
	FUNC19(1, FUNC9(a));

	FUNC20(a, ARCHIVE_FILTER_NONE, FUNC10(a, 0));
	FUNC20(a, ARCHIVE_FORMAT_ZIP, FUNC11(a));
	FUNC20(a, ARCHIVE_OK, FUNC12(a));
	FUNC19(ARCHIVE_OK, FUNC14(a));
}