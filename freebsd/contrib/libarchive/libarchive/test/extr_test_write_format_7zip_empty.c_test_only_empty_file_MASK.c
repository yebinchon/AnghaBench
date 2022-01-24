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
 int S_IFREG ; 
 size_t FUNC0 (struct archive_entry*) ; 
 size_t FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*,char*) ; 
 size_t FUNC3 (struct archive_entry*) ; 
 size_t FUNC4 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*) ; 
 size_t FUNC6 (struct archive_entry*) ; 
 size_t FUNC7 (struct archive_entry*) ; 
 size_t FUNC8 (struct archive_entry*) ; 
 struct archive_entry* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC11 (struct archive_entry*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct archive_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct archive_entry*,int,int) ; 
 size_t FUNC15 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC16 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct archive*) ; 
 size_t FUNC18 (struct archive*) ; 
 size_t FUNC19 (struct archive*) ; 
 struct archive* FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC22 (struct archive*) ; 
 int /*<<< orphan*/  FUNC23 (struct archive*) ; 
 int /*<<< orphan*/  FUNC24 (struct archive*) ; 
 size_t FUNC25 (struct archive*) ; 
 size_t FUNC26 (struct archive*) ; 
 size_t FUNC27 (struct archive*,struct archive_entry*) ; 
 struct archive* FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 (struct archive*,char*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC30 (struct archive*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int,size_t) ; 
 int /*<<< orphan*/  FUNC33 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC35 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (char*) ; 
 char* FUNC37 (size_t) ; 
 int /*<<< orphan*/  FUNC38 (struct archive*,char*,size_t,int) ; 

__attribute__((used)) static void
FUNC39(void)
{
	struct archive *a;
	struct archive_entry *ae;
	size_t buffsize = 1000;
	char *buff;
	size_t used;

	buff = FUNC37(buffsize);

	/* Create a new archive in memory. */
	FUNC31((a = FUNC28()) != NULL);
	FUNC33(a, ARCHIVE_OK, FUNC30(a));
	FUNC33(a, ARCHIVE_OK, FUNC24(a));
	FUNC33(a, ARCHIVE_OK,
	    FUNC29(a, buff, buffsize, &used));

	/*
	 * Write an empty file to it.
	 */
	FUNC31((ae = FUNC9()) != NULL);
	FUNC14(ae, 1, 10);
	FUNC32(1, FUNC7(ae));
	FUNC32(10, FUNC8(ae));
	FUNC11(ae, 2, 20);
	FUNC32(2, FUNC0(ae));
	FUNC32(20, FUNC1(ae));
	FUNC12(ae, 0, 100);
	FUNC32(0, FUNC3(ae));
	FUNC32(100, FUNC4(ae));
	FUNC2(ae, "empty");
	FUNC35("empty", FUNC10(ae));
	FUNC13(ae, AE_IFREG | 0755);
	FUNC32((S_IFREG | 0755), FUNC6(ae));

	FUNC32(ARCHIVE_OK, FUNC27(a, ae));
	FUNC5(ae);

	/* Close out the archive. */
	FUNC32(ARCHIVE_OK, FUNC25(a));
	FUNC32(ARCHIVE_OK, FUNC26(a));

	/* Verify the archive file size. */
	FUNC32(102, used);

	/* Verify the initial header. */
	FUNC34(buff,
		"\x37\x7a\xbc\xaf\x27\x1c\x00\x03"
		"\x00\x5b\x58\x25\x00\x00\x00\x00"
		"\x00\x00\x00\x00\x46\x00\x00\x00"
		"\x00\x00\x00\x00\x8f\xce\x1d\xf3", 32);

	/*
	 * Now, read the data back.
	 */
	/* With the test memory reader -- seeking mode. */
	FUNC31((a = FUNC20()) != NULL);
	FUNC33(a, ARCHIVE_OK, FUNC23(a));
	FUNC33(a, ARCHIVE_OK, FUNC22(a));
	FUNC33(a, ARCHIVE_OK, FUNC38(a, buff, used, 7));

	/*
	 * Read and verify an empty file.
	 */
	FUNC33(a, ARCHIVE_OK, FUNC21(a, &ae));
	FUNC32(1, FUNC7(ae));
	FUNC32(0, FUNC8(ae));
	FUNC32(2, FUNC0(ae));
	FUNC32(0, FUNC1(ae));
	FUNC32(0, FUNC3(ae));
	FUNC32(100, FUNC4(ae));
	FUNC35("empty", FUNC10(ae));
	FUNC32(AE_IFREG | 0755, FUNC6(ae));
	FUNC32(0, FUNC15(ae));

	/* Verify the end of the archive. */
	FUNC33(a, ARCHIVE_EOF, FUNC21(a, &ae));

	/* Verify archive format. */
	FUNC33(a, ARCHIVE_FILTER_NONE, FUNC16(a, 0));
	FUNC33(a, ARCHIVE_FORMAT_7ZIP, FUNC17(a));

	FUNC32(ARCHIVE_OK, FUNC18(a));
	FUNC32(ARCHIVE_OK, FUNC19(a));

	FUNC36(buff);
}