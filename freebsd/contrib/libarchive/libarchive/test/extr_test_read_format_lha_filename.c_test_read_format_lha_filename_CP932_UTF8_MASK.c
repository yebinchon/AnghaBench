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
 int ARCHIVE_FILTER_NONE ; 
 int ARCHIVE_FORMAT_LHA ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 
 struct archive* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*,char const*,int) ; 
 int FUNC9 (struct archive*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*) ; 
 int /*<<< orphan*/  FUNC11 (struct archive*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

__attribute__((used)) static void
FUNC18(const char *refname)
{
	struct archive *a;
	struct archive_entry *ae;

	/*
	 * Read LHA filename in en_US.UTF-8.
	 */
	if (NULL == FUNC16(LC_ALL, "en_US.UTF-8")) {
		FUNC17("en_US.UTF-8 locale not available on this system.");
		return;
	}
	/*
	 * Create a read object only for a test that platform support
	 * a character-set conversion because we can read a character-set
	 * of filenames from the header of an lha archive file and so we
	 * want to test that it works well. 
	 */
	FUNC12((a = FUNC6()) != NULL);
	FUNC14(a, ARCHIVE_OK, FUNC11(a));
	if (ARCHIVE_OK != FUNC9(a, "hdrcharset=CP932")) {
		FUNC13(ARCHIVE_OK, FUNC5(a));
		FUNC17("This system cannot convert character-set"
		    " from CP932 to UTF-8.");
		return;
	}
	FUNC13(ARCHIVE_OK, FUNC5(a));

	FUNC12((a = FUNC6()) != NULL);
	FUNC14(a, ARCHIVE_OK, FUNC10(a));
	FUNC14(a, ARCHIVE_OK, FUNC11(a));
	FUNC14(a, ARCHIVE_OK,
	    FUNC8(a, refname, 10240));

	/* Verify regular file. */
	FUNC14(a, ARCHIVE_OK, FUNC7(a, &ae));
	FUNC15("\xE6\xBC\xA2\xE5\xAD\x97\x2E\x74\x78\x74",
	    FUNC0(ae));
	FUNC13(8, FUNC1(ae));

	/* Verify regular file. */
	FUNC14(a, ARCHIVE_OK, FUNC7(a, &ae));
	FUNC15("\xE8\xA1\xA8\x2E\x74\x78\x74",
	    FUNC0(ae));
	FUNC13(4, FUNC1(ae));


	/* End of archive. */
	FUNC14(a, ARCHIVE_EOF, FUNC7(a, &ae));

	/* Verify archive format. */
	FUNC14(a, ARCHIVE_FILTER_NONE, FUNC2(a, 0));
	FUNC14(a, ARCHIVE_FORMAT_LHA, FUNC3(a));

	/* Close the archive. */
	FUNC13(ARCHIVE_OK, FUNC4(a));
	FUNC13(ARCHIVE_OK, FUNC5(a));
}