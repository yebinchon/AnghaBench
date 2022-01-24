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
typedef  int /*<<< orphan*/  filedata ;

/* Variables and functions */
 int AE_IFDIR ; 
 int AE_IFREG ; 
 int ARCHIVE_EOF ; 
 int ARCHIVE_FILTER_NONE ; 
 int ARCHIVE_FORMAT_7ZIP ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*) ; 
 struct archive_entry* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct archive_entry*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC13 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct archive*) ; 
 int /*<<< orphan*/  FUNC15 (struct archive*) ; 
 int /*<<< orphan*/  FUNC16 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct archive*) ; 
 struct archive* FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC20 (struct archive*) ; 
 int /*<<< orphan*/  FUNC21 (struct archive*) ; 
 int /*<<< orphan*/  FUNC22 (struct archive*) ; 
 int /*<<< orphan*/  FUNC23 (struct archive*) ; 
 int /*<<< orphan*/  FUNC24 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct archive*) ; 
 int /*<<< orphan*/  FUNC26 (struct archive*,struct archive_entry*) ; 
 struct archive* FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (struct archive*,char*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC29 (struct archive*) ; 
 int FUNC30 (struct archive*,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC35 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (char*) ; 
 int /*<<< orphan*/  FUNC37 (char*) ; 
 char* FUNC38 (size_t) ; 
 int /*<<< orphan*/  FUNC39 (struct archive*,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC40 (char*,char const*) ; 

__attribute__((used)) static void
FUNC41(const char *compression_type)
{
	char filedata[64];
	struct archive_entry *ae;
	struct archive *a;
	size_t used;
	size_t buffsize = 1000;
	char *buff;

	buff = FUNC38(buffsize);

	/* Create a new archive in memory. */
	FUNC31((a = FUNC27()) != NULL);
	FUNC33(a, ARCHIVE_OK, FUNC29(a));
	if (compression_type != NULL &&
	    ARCHIVE_OK != FUNC30(a, "7zip",
	    "compression", compression_type)) {
		FUNC40("%s writing not fully supported on this platform",
		   compression_type);
		FUNC32(ARCHIVE_OK, FUNC25(a));
		FUNC37(buff);
		return;
	}
	FUNC33(a, ARCHIVE_OK, FUNC22(a));
	FUNC33(a, ARCHIVE_OK,
	    FUNC28(a, buff, buffsize, &used));

	/*
	 * Write a file to it.
	 */
	FUNC31((ae = FUNC7()) != NULL);
	FUNC10(ae, 1, 100);
	FUNC32(1, FUNC5(ae));
	FUNC32(100, FUNC6(ae));
	FUNC1(ae, "file");
	FUNC35("file", FUNC8(ae));
	FUNC9(ae, AE_IFREG | 0755);
	FUNC32((AE_IFREG | 0755), FUNC4(ae));
	FUNC11(ae, 8);

	FUNC32(0, FUNC26(a, ae));
	FUNC3(ae);
	FUNC32(8, FUNC24(a, "12345678", 9));
	FUNC32(0, FUNC24(a, "1", 1));

	/*
	 * Write another file to it.
	 */
	FUNC31((ae = FUNC7()) != NULL);
	FUNC10(ae, 1, 10);
	FUNC32(1, FUNC5(ae));
	FUNC32(10, FUNC6(ae));
	FUNC1(ae, "file2");
	FUNC35("file2", FUNC8(ae));
	FUNC9(ae, AE_IFREG | 0755);
	FUNC32((AE_IFREG | 0755), FUNC4(ae));
	FUNC11(ae, 4);

	FUNC32(ARCHIVE_OK, FUNC26(a, ae));
	FUNC3(ae);
	FUNC32(4, FUNC24(a, "1234", 5));

	/*
	 * Write a directory to it.
	 */
	FUNC31((ae = FUNC7()) != NULL);
	FUNC10(ae, 11, 100);
	FUNC1(ae, "dir");
	FUNC9(ae, AE_IFDIR | 0755);
	FUNC11(ae, 512);

	FUNC33(a, ARCHIVE_OK, FUNC26(a, ae));
	FUNC36("size should be zero so that applications know not to write");
	FUNC32(0, FUNC12(ae));
	FUNC3(ae);
	FUNC33(a, 0, FUNC24(a, "12345678", 9));

	/*
	 * Write a sub directory to it.
	 */
	FUNC31((ae = FUNC7()) != NULL);
	FUNC10(ae, 11, 200);
	FUNC1(ae, "dir/subdir");
	FUNC9(ae, AE_IFDIR | 0755);
	FUNC11(ae, 512);

	FUNC33(a, ARCHIVE_OK, FUNC26(a, ae));
	FUNC36("size should be zero so that applications know not to write");
	FUNC32(0, FUNC12(ae));
	FUNC3(ae);
	FUNC33(a, 0, FUNC24(a, "12345678", 9));

	/*
	 * Write a sub sub-directory to it.
	 */
	FUNC31((ae = FUNC7()) != NULL);
	FUNC10(ae, 11, 300);
	FUNC1(ae, "dir/subdir/subdir");
	FUNC9(ae, AE_IFDIR | 0755);
	FUNC11(ae, 512);

	FUNC33(a, ARCHIVE_OK, FUNC26(a, ae));
	FUNC36("size should be zero so that applications know not to write");
	FUNC32(0, FUNC12(ae));
	FUNC3(ae);
	FUNC33(a, 0, FUNC24(a, "12345678", 9));

	/* Close out the archive. */
	FUNC32(ARCHIVE_OK, FUNC23(a));
	FUNC32(ARCHIVE_OK, FUNC25(a));

	/* Verify the initial header. */
	FUNC34(buff, "\x37\x7a\xbc\xaf\x27\x1c\x00\x03", 8);

	/*
	 * Now, read the data back.
	 */
	/* With the test memory reader -- seeking mode. */
	FUNC31((a = FUNC18()) != NULL);
	FUNC33(a, ARCHIVE_OK, FUNC21(a));
	FUNC33(a, ARCHIVE_OK, FUNC20(a));
	FUNC33(a, ARCHIVE_OK, FUNC39(a, buff, used, 7));

	/*
	 * Read and verify first file.
	 */
	FUNC33(a, ARCHIVE_OK, FUNC19(a, &ae));
	FUNC32(1, FUNC5(ae));
	FUNC32(100, FUNC6(ae));
	FUNC32(0, FUNC0(ae));
	FUNC32(0, FUNC2(ae));
	FUNC35("file", FUNC8(ae));
	FUNC32(AE_IFREG | 0755, FUNC4(ae));
	FUNC32(8, FUNC12(ae));
	FUNC33(a, 8,
	    FUNC16(a, filedata, sizeof(filedata)));
	FUNC34(filedata, "12345678", 8);


	/*
	 * Read the second file back.
	 */
	FUNC33(a, ARCHIVE_OK, FUNC19(a, &ae));
	FUNC32(1, FUNC5(ae));
	FUNC32(0, FUNC6(ae));
	FUNC32(0, FUNC0(ae));
	FUNC32(0, FUNC2(ae));
	FUNC35("file2", FUNC8(ae));
	FUNC32(AE_IFREG | 0755, FUNC4(ae));
	FUNC32(4, FUNC12(ae));
	FUNC33(a, 4,
	    FUNC16(a, filedata, sizeof(filedata)));
	FUNC34(filedata, "1234", 4);

	/*
	 * Read the sub sub-dir entry back.
	 */
	FUNC33(a, ARCHIVE_OK, FUNC19(a, &ae));
	FUNC32(11, FUNC5(ae));
	FUNC32(300, FUNC6(ae));
	FUNC32(0, FUNC0(ae));
	FUNC32(0, FUNC2(ae));
	FUNC35("dir/subdir/subdir/", FUNC8(ae));
	FUNC32(AE_IFDIR | 0755, FUNC4(ae));
	FUNC32(0, FUNC12(ae));
	FUNC33(a, 0, FUNC16(a, filedata, 10));

	/*
	 * Read the sub dir entry back.
	 */
	FUNC33(a, ARCHIVE_OK, FUNC19(a, &ae));
	FUNC32(11, FUNC5(ae));
	FUNC32(200, FUNC6(ae));
	FUNC32(0, FUNC0(ae));
	FUNC32(0, FUNC2(ae));
	FUNC35("dir/subdir/", FUNC8(ae));
	FUNC32(AE_IFDIR | 0755, FUNC4(ae));
	FUNC32(0, FUNC12(ae));
	FUNC33(a, 0, FUNC16(a, filedata, 10));

	/*
	 * Read the dir entry back.
	 */
	FUNC33(a, ARCHIVE_OK, FUNC19(a, &ae));
	FUNC32(11, FUNC5(ae));
	FUNC32(100, FUNC6(ae));
	FUNC32(0, FUNC0(ae));
	FUNC32(0, FUNC2(ae));
	FUNC35("dir/", FUNC8(ae));
	FUNC32(AE_IFDIR | 0755, FUNC4(ae));
	FUNC32(0, FUNC12(ae));
	FUNC33(a, 0, FUNC16(a, filedata, 10));

	/* Verify the end of the archive. */
	FUNC33(a, ARCHIVE_EOF, FUNC19(a, &ae));

	/* Verify archive format. */
	FUNC33(a, ARCHIVE_FILTER_NONE, FUNC13(a, 0));
	FUNC33(a, ARCHIVE_FORMAT_7ZIP, FUNC14(a));

	FUNC32(ARCHIVE_OK, FUNC15(a));
	FUNC32(ARCHIVE_OK, FUNC17(a));

	FUNC37(buff);
}