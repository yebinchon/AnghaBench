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
 int /*<<< orphan*/  ARCHIVE_FORMAT_TAR_GNUTAR ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*) ; 
 int FUNC8 (struct archive*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct archive*) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*) ; 
 int /*<<< orphan*/  FUNC11 (struct archive*) ; 
 struct archive* FUNC12 () ; 
 int FUNC13 (struct archive*,struct archive_entry**) ; 
 int FUNC14 (struct archive*,char*,int) ; 
 int FUNC15 (struct archive*) ; 
 int FUNC16 (struct archive*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct archive*,int,int) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 

__attribute__((used)) static void
FUNC22(void)
{
	char name[] = "test_compat_gtar_1.tar";
	struct archive_entry *ae;
	struct archive *a;
	int r;

	FUNC17((a = FUNC12()) != NULL);
	FUNC19(a, ARCHIVE_OK, FUNC15(a));
	FUNC19(a, ARCHIVE_OK, FUNC16(a));
	FUNC21(name);
	FUNC19(a, ARCHIVE_OK, FUNC14(a, name, 10240));

	/* Read first entry. */
	FUNC19(a, ARCHIVE_OK, r = FUNC13(a, &ae));
	if (r != ARCHIVE_OK) {
		FUNC11(a);
		return;
	}
	FUNC20(
		"12345678901234567890123456789012345678901234567890"
		"12345678901234567890123456789012345678901234567890"
		"12345678901234567890123456789012345678901234567890"
		"12345678901234567890123456789012345678901234567890",
		FUNC4(ae));
	FUNC18(1197179003, FUNC3(ae));
	FUNC18(1000, FUNC6(ae));
	FUNC20("tim", FUNC7(ae));
	FUNC18(1000, FUNC0(ae));
	FUNC20("tim", FUNC1(ae));
	FUNC18(0100644, FUNC2(ae));

	/* Read second entry. */
	FUNC19(a, ARCHIVE_OK, r = FUNC13(a, &ae));
	if (r != ARCHIVE_OK) {
		FUNC11(a);
		return;
	}
	FUNC20(
		"abcdefghijabcdefghijabcdefghijabcdefghijabcdefghij"
		"abcdefghijabcdefghijabcdefghijabcdefghijabcdefghij"
		"abcdefghijabcdefghijabcdefghijabcdefghijabcdefghij"
		"abcdefghijabcdefghijabcdefghijabcdefghijabcdefghij",
		FUNC4(ae));
	FUNC20(
		"12345678901234567890123456789012345678901234567890"
		"12345678901234567890123456789012345678901234567890"
		"12345678901234567890123456789012345678901234567890"
		"12345678901234567890123456789012345678901234567890",
		FUNC5(ae));
	FUNC18(1197179043, FUNC3(ae));
	FUNC18(1000, FUNC6(ae));
	FUNC20("tim", FUNC7(ae));
	FUNC18(1000, FUNC0(ae));
	FUNC20("tim", FUNC1(ae));
	FUNC18(0120755, FUNC2(ae));

	/* Verify the end-of-archive. */
	FUNC19(a, ARCHIVE_EOF, FUNC13(a, &ae));

	/* Verify that the format detection worked. */
	FUNC18(FUNC8(a, 0), ARCHIVE_FILTER_NONE);
	FUNC18(FUNC9(a), ARCHIVE_FORMAT_TAR_GNUTAR);

	FUNC18(ARCHIVE_OK, FUNC10(a));
	FUNC18(ARCHIVE_OK, FUNC11(a));
}