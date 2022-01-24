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
 int ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE ; 
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
 int /*<<< orphan*/  FUNC14 (struct archive*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 

__attribute__((used)) static void
FUNC21(const char *refname)
{
	struct archive *a;
	struct archive_entry *ae;

	/*
 	* Read filename in ru_RU.CP866 with "hdrcharset=KOI8-R" option.
 	* We should correctly read two filenames.
	*/
	if (NULL == FUNC19(LC_ALL, "Russian_Russia.866") &&
	    NULL == FUNC19(LC_ALL, "ru_RU.CP866")) {
		FUNC20("ru_RU.CP866 locale not available on this system.");
		return;
	}

	/* Test if the platform can convert from UTF-8. */
	FUNC15((a = FUNC8()) != NULL);
	FUNC17(a, ARCHIVE_OK, FUNC14(a));
	if (ARCHIVE_OK != FUNC11(a, "hdrcharset=UTF-8")) {
		FUNC16(ARCHIVE_OK, FUNC6(a));
		FUNC20("This system cannot convert character-set"
		    " from UTF-8 to CP866.");
		return;
	}
	FUNC16(ARCHIVE_OK, FUNC6(a));

	FUNC15((a = FUNC8()) != NULL);
	FUNC17(a, ARCHIVE_OK, FUNC12(a));
	FUNC17(a, ARCHIVE_OK, FUNC13(a));
	if (ARCHIVE_OK != FUNC11(a, "hdrcharset=KOI8-R")) {
		FUNC20("This system cannot convert character-set"
		    " from KOI8-R to CP866.");
		goto next_test;
	}
	FUNC17(a, ARCHIVE_OK,
	    FUNC10(a, refname, 10240));

	/* Verify regular first file. */
	FUNC17(a, ARCHIVE_OK, FUNC9(a, &ae));
	FUNC18("\x8f\x90\x88\x82\x85\x92",
	    FUNC1(ae));
	FUNC16(6, FUNC2(ae));
	FUNC16(FUNC0(ae), 0);
	FUNC17(a, FUNC7(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	/* Verify regular second file. */
	FUNC17(a, ARCHIVE_OK, FUNC9(a, &ae));
	FUNC18("\xaf\xe0\xa8\xa2\xa5\xe2",
	    FUNC1(ae));
	FUNC16(6, FUNC2(ae));
	FUNC16(FUNC0(ae), 0);
	FUNC17(a, FUNC7(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);


	/* End of archive. */
	FUNC17(a, ARCHIVE_EOF, FUNC9(a, &ae));

	/* Verify archive format. */
	FUNC17(a, ARCHIVE_FILTER_COMPRESS, FUNC3(a, 0));
	FUNC17(a, ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE,
	    FUNC4(a));

	/* Close the archive. */
	FUNC16(ARCHIVE_OK, FUNC5(a));
next_test:
	FUNC16(ARCHIVE_OK, FUNC6(a));


	/*
	 * Read filename in ru_RU.CP866 without "hdrcharset=KOI8-R" option.
	 * The filename we can properly read is only second file.
	 */

	FUNC15((a = FUNC8()) != NULL);
	FUNC17(a, ARCHIVE_OK, FUNC12(a));
	FUNC17(a, ARCHIVE_OK, FUNC13(a));
	FUNC17(a, ARCHIVE_OK,
	    FUNC10(a, refname, 10240));

	/*
	 * Verify regular first file.
	 * The filename is not translated to CP866 because hdrcharset
	 * attribute is BINARY and there is not way to know its charset.
	 */
	FUNC17(a, ARCHIVE_OK, FUNC9(a, &ae));
	/* A filename is in KOI8-R. */
	FUNC18("\xf0\xf2\xe9\xf7\xe5\xf4",
	    FUNC1(ae));
	FUNC16(6, FUNC2(ae));
	FUNC16(FUNC0(ae), 0);
	FUNC17(a, FUNC7(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	/*
	 * Verify regular second file.
	 * The filename is translated from UTF-8 to CP866
	 */
	FUNC17(a, ARCHIVE_OK, FUNC9(a, &ae));
	FUNC18("\xaf\xe0\xa8\xa2\xa5\xe2",
	    FUNC1(ae));
	FUNC16(6, FUNC2(ae));
	FUNC16(FUNC0(ae), 0);
	FUNC17(a, FUNC7(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);


	/* End of archive. */
	FUNC17(a, ARCHIVE_EOF, FUNC9(a, &ae));

	/* Verify archive format. */
	FUNC17(a, ARCHIVE_FILTER_COMPRESS, FUNC3(a, 0));
	FUNC17(a, ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE,
	    FUNC4(a));

	/* Close the archive. */
	FUNC16(ARCHIVE_OK, FUNC5(a));
	FUNC16(ARCHIVE_OK, FUNC6(a));
}