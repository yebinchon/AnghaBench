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
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 int FUNC4 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*) ; 
 struct archive_entry* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct archive_entry*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC13 (struct archive*) ; 
 int /*<<< orphan*/  FUNC14 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct archive*) ; 
 int /*<<< orphan*/  FUNC16 (struct archive*) ; 
 struct archive* FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC19 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct archive*) ; 
 int /*<<< orphan*/  FUNC21 (struct archive*) ; 
 int /*<<< orphan*/  FUNC22 (struct archive*) ; 
 int /*<<< orphan*/  FUNC23 (struct archive*) ; 
 int /*<<< orphan*/  FUNC24 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct archive*) ; 
 int /*<<< orphan*/  FUNC26 (struct archive*,struct archive_entry*) ; 
 struct archive* FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (struct archive*,char*) ; 
 int /*<<< orphan*/  FUNC29 (struct archive*) ; 
 int /*<<< orphan*/  FUNC30 (int) ; 
 int /*<<< orphan*/  FUNC31 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC34 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC35(void)
{
	char buff[64];
	struct archive_entry *ae;
	struct archive *a;

	/* Write an archive through this FILE *. */
	FUNC30((a = FUNC27()) != NULL);
	FUNC32(a, ARCHIVE_OK, FUNC29(a));
	FUNC32(a, ARCHIVE_OK, FUNC22(a));
	FUNC32(a, ARCHIVE_OK,
	    FUNC28(a, L"test.tar"));

	/*
	 * Write a file to it.
	 */
	FUNC30((ae = FUNC7()) != NULL);
	FUNC10(ae, 1, 0);
	FUNC1(ae, L"file");
	FUNC9(ae, S_IFREG | 0755);
	FUNC11(ae, 8);
	FUNC32(a, ARCHIVE_OK, FUNC26(a, ae));
	FUNC3(ae);
	FUNC32(a, 8, FUNC24(a, "12345678", 9));

	/*
	 * Write a second file to it.
	 */
	FUNC30((ae = FUNC7()) != NULL);
	FUNC1(ae, L"file2");
	FUNC9(ae, S_IFREG | 0755);
	FUNC11(ae, 819200);
	FUNC32(a, ARCHIVE_OK, FUNC26(a, ae));
	FUNC3(ae);

	/* Close out the archive. */
	FUNC32(a, ARCHIVE_OK, FUNC23(a));
	FUNC31(ARCHIVE_OK, FUNC25(a));

	/*
	 * Now, read the data back.
	 */
	FUNC30((a = FUNC17()) != NULL);
	FUNC32(a, ARCHIVE_OK, FUNC21(a));
	FUNC32(a, ARCHIVE_OK, FUNC20(a));
	FUNC32(a, ARCHIVE_OK,
	    FUNC19(a, L"test.tar", 512));

	FUNC32(a, ARCHIVE_OK, FUNC18(a, &ae));
	FUNC31(1, FUNC5(ae));
	FUNC31(0, FUNC6(ae));
	FUNC31(0, FUNC0(ae));
	FUNC31(0, FUNC2(ae));
	FUNC34(L"file", FUNC8(ae));
	FUNC30((S_IFREG | 0755) == FUNC4(ae));
	FUNC31(8, FUNC12(ae));
	FUNC32(a, 8, FUNC14(a, buff, 10));
	FUNC33(buff, "12345678", 8);

	FUNC32(a, ARCHIVE_OK, FUNC18(a, &ae));
	FUNC34(L"file2", FUNC8(ae));
	FUNC30((S_IFREG | 0755) == FUNC4(ae));
	FUNC31(819200, FUNC12(ae));
	FUNC32(a, ARCHIVE_OK, FUNC15(a));

	/* Verify the end of the archive. */
	FUNC32(a, ARCHIVE_EOF, FUNC18(a, &ae));
	FUNC32(a, ARCHIVE_OK, FUNC13(a));
	FUNC31(ARCHIVE_OK, FUNC16(a));

	/*
	 * Verify some of the error handling.
	 */
	FUNC30((a = FUNC17()) != NULL);
	FUNC32(a, ARCHIVE_OK, FUNC21(a));
	FUNC32(a, ARCHIVE_OK, FUNC20(a));
	FUNC32(a, ARCHIVE_FATAL,
	    FUNC19(a, L"nonexistent.tar", 512));
	FUNC32(a, ARCHIVE_OK, FUNC13(a));
	FUNC31(ARCHIVE_OK, FUNC16(a));

}