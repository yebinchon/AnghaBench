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
 int /*<<< orphan*/  ARCHIVE_FILTER_NONE ; 
 int /*<<< orphan*/  ARCHIVE_FORMAT_CPIO_SVR4_NOCRC ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*) ; 
 int FUNC6 (struct archive*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct archive*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*) ; 
 struct archive* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC12 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct archive*) ; 
 int /*<<< orphan*/  FUNC14 (struct archive*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 

__attribute__((used)) static void
FUNC20(void)
{
	char name[] = "test_compat_cpio_1.cpio";
	struct archive_entry *ae;
	struct archive *a;

	FUNC15((a = FUNC10()) != NULL);
	FUNC17(a, ARCHIVE_OK, FUNC13(a));
	FUNC17(a, ARCHIVE_OK, FUNC14(a));
	FUNC19(name);
	FUNC17(a, ARCHIVE_OK, FUNC12(a, name, 17));

	/* Read first entry. */
	FUNC17(a, ARCHIVE_OK, FUNC11(a, &ae));
	FUNC18("foo1", FUNC4(ae));
	FUNC18(NULL, FUNC1(ae));
	FUNC16(1260250228, FUNC3(ae));
	FUNC16(1000, FUNC5(ae));
	FUNC16(1000, FUNC0(ae));
	FUNC16(0100644, FUNC2(ae));

	/* Read second entry. */
	FUNC17(a, ARCHIVE_OK, FUNC11(a, &ae));
	FUNC18("foo2", FUNC4(ae));
	FUNC18(NULL, FUNC1(ae));
	FUNC16(1260250228, FUNC3(ae));
	FUNC16(1000, FUNC5(ae));
	FUNC16(1000, FUNC0(ae));
	FUNC16(0100644, FUNC2(ae));

	/* Read third entry. */
	FUNC17(a, ARCHIVE_OK, FUNC11(a, &ae));
	FUNC18("bar1", FUNC4(ae));
	FUNC18(NULL, FUNC1(ae));
	FUNC16(1260250228, FUNC3(ae));
	FUNC16(1000, FUNC5(ae));
	FUNC16(1000, FUNC0(ae));
	FUNC16(0100644, FUNC2(ae));

	/* Read fourth entry. */
	FUNC17(a, ARCHIVE_OK, FUNC11(a, &ae));
	FUNC18("bar2", FUNC4(ae));
	FUNC18("bar1", FUNC1(ae));
	FUNC16(1260250228, FUNC3(ae));
	FUNC16(1000, FUNC5(ae));
	FUNC16(1000, FUNC0(ae));
	FUNC16(0100644, FUNC2(ae));

	/* Verify that the format detection worked. */
	FUNC16(FUNC6(a, 0), ARCHIVE_FILTER_NONE);
	FUNC16(FUNC7(a), ARCHIVE_FORMAT_CPIO_SVR4_NOCRC);

	FUNC16(ARCHIVE_OK, FUNC8(a));
	FUNC16(ARCHIVE_OK, FUNC9(a));
}