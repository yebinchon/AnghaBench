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
 int /*<<< orphan*/  ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_WARN ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*) ; 
 struct archive* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void
FUNC11(void)
{
	static const char testname[] = "test_pax_filename_encoding.tar";
	/*
	 * \314\214 is a valid 2-byte UTF-8 sequence.
	 * \374 is invalid in UTF-8.
	 */
	char filename[] = "abc\314\214mno\374xyz";
	struct archive *a;
	struct archive_entry *entry;

	/*
	 * Read an archive that has non-UTF8 pax filenames in it.
	 */
	FUNC9(testname);
	a = FUNC2();
	FUNC7(ARCHIVE_OK, FUNC6(a));
	FUNC7(ARCHIVE_OK, FUNC5(a));
	FUNC7(ARCHIVE_OK,
	    FUNC4(a, testname, 10240));
	/*
	 * First entry in this test archive has an invalid UTF-8 sequence
	 * in it, but the header is not marked as hdrcharset=BINARY, so that
	 * requires a warning.
	 */
	FUNC10("Invalid UTF8 in a pax archive pathname should cause a warning");
	FUNC7(ARCHIVE_WARN, FUNC3(a, &entry));
	FUNC8(filename, FUNC0(entry));
	/*
	 * Second entry is identical except that it does have
	 * hdrcharset=BINARY, so no warning should be generated.
	 */
	FUNC10("A pathname with hdrcharset=BINARY can have invalid UTF8\n"
	    " characters in it without generating a warning");
	FUNC7(ARCHIVE_OK, FUNC3(a, &entry));
	FUNC8(filename, FUNC0(entry));
	FUNC1(a);
}