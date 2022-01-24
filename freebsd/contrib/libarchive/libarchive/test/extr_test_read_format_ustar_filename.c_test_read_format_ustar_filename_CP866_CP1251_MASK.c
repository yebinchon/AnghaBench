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
 int ARCHIVE_FILTER_COMPRESS ; 
 int ARCHIVE_FORMAT_TAR_USTAR ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED ; 
 int /*<<< orphan*/  LC_ALL ; 
 int FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*) ; 
 int FUNC7 (struct archive*) ; 
 struct archive* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*,char const*,int) ; 
 int FUNC11 (struct archive*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct archive*) ; 
 int /*<<< orphan*/  FUNC13 (struct archive*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 

__attribute__((used)) static void
FUNC20(const char *refname)
{
	struct archive *a;
	struct archive_entry *ae;

	/*
	 * Read CP866 filename in CP1251 with "hdrcharset=CP866" option.
	 */
	if (NULL == FUNC18(LC_ALL, "Russian_Russia") &&
	    NULL == FUNC18(LC_ALL, "ru_RU.CP1251")) {
		FUNC19("CP1251 locale not available on this system.");
		return;
	}

	FUNC14((a = FUNC8()) != NULL);
	FUNC16(a, ARCHIVE_OK, FUNC12(a));
	FUNC16(a, ARCHIVE_OK, FUNC13(a));
	if (ARCHIVE_OK != FUNC11(a, "hdrcharset=CP866")) {
		FUNC19("This system cannot convert character-set"
		    " from CP866 to CP1251.");
		goto cleanup;
	}
	FUNC16(a, ARCHIVE_OK,
	    FUNC10(a, refname, 10240));

	/* Verify regular file. */
	FUNC16(a, ARCHIVE_OK, FUNC9(a, &ae));
	FUNC17("\xcf\xd0\xc8\xc2\xc5\xd2",
	    FUNC1(ae));
	FUNC15(6, FUNC2(ae));
	FUNC15(FUNC0(ae), 0);
	FUNC16(a, FUNC7(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	/* Verify regular file. */
	FUNC16(a, ARCHIVE_OK, FUNC9(a, &ae));
	FUNC17("\xef\xf0\xe8\xe2\xe5\xf2",
	    FUNC1(ae));
	FUNC15(6, FUNC2(ae));
	FUNC15(FUNC0(ae), 0);
	FUNC16(a, FUNC7(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);


	/* End of archive. */
	FUNC16(a, ARCHIVE_EOF, FUNC9(a, &ae));

	/* Verify archive format. */
	FUNC16(a, ARCHIVE_FILTER_COMPRESS, FUNC3(a, 0));
	FUNC16(a, ARCHIVE_FORMAT_TAR_USTAR, FUNC4(a));

	/* Close the archive. */
	FUNC15(ARCHIVE_OK, FUNC5(a));
cleanup:
	FUNC15(ARCHIVE_OK, FUNC6(a));
}