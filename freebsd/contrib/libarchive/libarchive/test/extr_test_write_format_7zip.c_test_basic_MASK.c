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
 int AE_IFLNK ; 
 int AE_IFREG ; 
 int ARCHIVE_EOF ; 
 int ARCHIVE_FILTER_NONE ; 
 int ARCHIVE_FORMAT_7ZIP ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*) ; 
 struct archive_entry* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC10 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct archive_entry*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC14 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC15 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct archive*) ; 
 int /*<<< orphan*/  FUNC17 (struct archive*) ; 
 int /*<<< orphan*/  FUNC18 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct archive*) ; 
 struct archive* FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC22 (struct archive*) ; 
 int /*<<< orphan*/  FUNC23 (struct archive*) ; 
 int /*<<< orphan*/  FUNC24 (struct archive*) ; 
 int /*<<< orphan*/  FUNC25 (struct archive*) ; 
 int /*<<< orphan*/  FUNC26 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC27 (struct archive*) ; 
 int /*<<< orphan*/  FUNC28 (struct archive*,struct archive_entry*) ; 
 struct archive* FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 (struct archive*,char*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC31 (struct archive*) ; 
 int FUNC32 (struct archive*,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC37 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (char*) ; 
 int /*<<< orphan*/  FUNC39 (char*) ; 
 char* FUNC40 (size_t) ; 
 int /*<<< orphan*/  FUNC41 (struct archive*,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC42 (char*,char const*) ; 

__attribute__((used)) static void
FUNC43(const char *compression_type)
{
	char filedata[64];
	struct archive_entry *ae;
	struct archive *a;
	size_t used;
	size_t buffsize = 1000;
	char *buff;

	buff = FUNC40(buffsize);

	/* Create a new archive in memory. */
	FUNC33((a = FUNC29()) != NULL);
	FUNC35(a, ARCHIVE_OK, FUNC31(a));
	if (compression_type != NULL &&
	    ARCHIVE_OK != FUNC32(a, "7zip",
	    "compression", compression_type)) {
		FUNC42("%s writing not fully supported on this platform",
		   compression_type);
		FUNC34(ARCHIVE_OK, FUNC27(a));
		FUNC39(buff);
		return;
	}
	FUNC35(a, ARCHIVE_OK, FUNC24(a));
	FUNC35(a, ARCHIVE_OK,
	    FUNC30(a, buff, buffsize, &used));

	/*
	 * Write an empty file to it.
	 */
	FUNC33((ae = FUNC8()) != NULL);
	FUNC11(ae, 1, 10);
	FUNC34(1, FUNC6(ae));
	FUNC34(10, FUNC7(ae));
	FUNC1(ae, "empty");
	FUNC37("empty", FUNC9(ae));
	FUNC10(ae, AE_IFREG | 0755);
	FUNC34((AE_IFREG | 0755), FUNC5(ae));

	FUNC34(ARCHIVE_OK, FUNC28(a, ae));
	FUNC4(ae);

	/*
	 * Write another empty file to it.
	 */
	FUNC33((ae = FUNC8()) != NULL);
	FUNC11(ae, 1, 10);
	FUNC34(1, FUNC6(ae));
	FUNC34(10, FUNC7(ae));
	FUNC1(ae, "empty2");
	FUNC37("empty2", FUNC9(ae));
	FUNC10(ae, AE_IFREG | 0444);
	FUNC34((AE_IFREG | 0444), FUNC5(ae));

	FUNC34(ARCHIVE_OK, FUNC28(a, ae));
	FUNC4(ae);

	/*
	 * Write a file to it.
	 */
	FUNC33((ae = FUNC8()) != NULL);
	FUNC11(ae, 1, 100);
	FUNC34(1, FUNC6(ae));
	FUNC34(100, FUNC7(ae));
	FUNC1(ae, "file");
	FUNC37("file", FUNC9(ae));
	FUNC10(ae, AE_IFREG | 0755);
	FUNC34((AE_IFREG | 0755), FUNC5(ae));
	FUNC12(ae, 8);

	FUNC34(0, FUNC28(a, ae));
	FUNC4(ae);
	FUNC34(8, FUNC26(a, "12345678", 9));
	FUNC34(0, FUNC26(a, "1", 1));

	/*
	 * Write another file to it.
	 */
	FUNC33((ae = FUNC8()) != NULL);
	FUNC11(ae, 1, 10);
	FUNC34(1, FUNC6(ae));
	FUNC34(10, FUNC7(ae));
	FUNC1(ae, "file2");
	FUNC37("file2", FUNC9(ae));
	FUNC10(ae, AE_IFREG | 0755);
	FUNC34((AE_IFREG | 0755), FUNC5(ae));
	FUNC12(ae, 4);

	FUNC34(ARCHIVE_OK, FUNC28(a, ae));
	FUNC4(ae);
	FUNC34(4, FUNC26(a, "1234", 5));

	/*
	 * Write a symbolic file to it.
	 */
	FUNC33((ae = FUNC8()) != NULL);
	FUNC11(ae, 1, 10);
	FUNC34(1, FUNC6(ae));
	FUNC34(10, FUNC7(ae));
	FUNC1(ae, "symbolic");
	FUNC2(ae, "file1");
	FUNC37("symbolic", FUNC9(ae));
	FUNC10(ae, AE_IFLNK | 0755);
	FUNC34((AE_IFLNK | 0755), FUNC5(ae));

	FUNC34(ARCHIVE_OK, FUNC28(a, ae));
	FUNC4(ae);

	/*
	 * Write a directory to it.
	 */
	FUNC33((ae = FUNC8()) != NULL);
	FUNC11(ae, 11, 100);
	FUNC1(ae, "dir");
	FUNC10(ae, AE_IFDIR | 0755);
	FUNC12(ae, 512);

	FUNC35(a, ARCHIVE_OK, FUNC28(a, ae));
	FUNC38("size should be zero so that applications know not to write");
	FUNC34(0, FUNC13(ae));
	FUNC4(ae);
	FUNC35(a, 0, FUNC26(a, "12345678", 9));

	/*
	 * Write a sub directory to it.
	 */
	FUNC33((ae = FUNC8()) != NULL);
	FUNC11(ae, 11, 200);
	FUNC1(ae, "dir/subdir");
	FUNC10(ae, AE_IFDIR | 0755);
	FUNC12(ae, 512);

	FUNC35(a, ARCHIVE_OK, FUNC28(a, ae));
	FUNC38("size should be zero so that applications know not to write");
	FUNC34(0, FUNC13(ae));
	FUNC4(ae);
	FUNC35(a, 0, FUNC26(a, "12345678", 9));

	/*
	 * Write a sub sub-directory to it.
	 */
	FUNC33((ae = FUNC8()) != NULL);
	FUNC11(ae, 11, 300);
	FUNC1(ae, "dir/subdir/subdir");
	FUNC10(ae, AE_IFDIR | 0755);
	FUNC12(ae, 512);

	FUNC35(a, ARCHIVE_OK, FUNC28(a, ae));
	FUNC38("size should be zero so that applications know not to write");
	FUNC34(0, FUNC13(ae));
	FUNC4(ae);
	FUNC35(a, 0, FUNC26(a, "12345678", 9));

	/* Close out the archive. */
	FUNC34(ARCHIVE_OK, FUNC25(a));
	FUNC34(ARCHIVE_OK, FUNC27(a));

	/* Verify the initial header. */
	FUNC36(buff, "\x37\x7a\xbc\xaf\x27\x1c\x00\x03", 8);

	/*
	 * Now, read the data back.
	 */
	/* With the test memory reader -- seeking mode. */
	FUNC33((a = FUNC20()) != NULL);
	FUNC35(a, ARCHIVE_OK, FUNC23(a));
	FUNC35(a, ARCHIVE_OK, FUNC22(a));
	FUNC35(a, ARCHIVE_OK, FUNC41(a, buff, used, 7));

	/*
	 * Read and verify first file.
	 */
	FUNC35(a, ARCHIVE_OK, FUNC21(a, &ae));
	FUNC34(1, FUNC6(ae));
	FUNC34(100, FUNC7(ae));
	FUNC34(0, FUNC0(ae));
	FUNC34(0, FUNC3(ae));
	FUNC37("file", FUNC9(ae));
	FUNC34(AE_IFREG | 0755, FUNC5(ae));
	FUNC34(8, FUNC13(ae));
	FUNC35(a, 8,
	    FUNC18(a, filedata, sizeof(filedata)));
	FUNC36(filedata, "12345678", 8);


	/*
	 * Read the second file back.
	 */
	FUNC35(a, ARCHIVE_OK, FUNC21(a, &ae));
	FUNC34(1, FUNC6(ae));
	FUNC34(0, FUNC7(ae));
	FUNC34(0, FUNC0(ae));
	FUNC34(0, FUNC3(ae));
	FUNC37("file2", FUNC9(ae));
	FUNC34(AE_IFREG | 0755, FUNC5(ae));
	FUNC34(4, FUNC13(ae));
	FUNC35(a, 4,
	    FUNC18(a, filedata, sizeof(filedata)));
	FUNC36(filedata, "1234", 4);

	/*
	 * Read and verify a symbolic file.
	 */
	FUNC35(a, ARCHIVE_OK, FUNC21(a, &ae));
	FUNC34(1, FUNC6(ae));
	FUNC34(0, FUNC7(ae));
	FUNC34(0, FUNC0(ae));
	FUNC34(0, FUNC3(ae));
	FUNC37("symbolic", FUNC9(ae));
	FUNC37("file1", FUNC14(ae));
	FUNC34(AE_IFLNK | 0755, FUNC5(ae));
	FUNC34(0, FUNC13(ae));

	/*
	 * Read and verify an empty file.
	 */
	FUNC35(a, ARCHIVE_OK, FUNC21(a, &ae));
	FUNC34(1, FUNC6(ae));
	FUNC34(0, FUNC7(ae));
	FUNC34(0, FUNC0(ae));
	FUNC34(0, FUNC3(ae));
	FUNC37("empty", FUNC9(ae));
	FUNC34(AE_IFREG | 0755, FUNC5(ae));
	FUNC34(0, FUNC13(ae));

	/*
	 * Read and verify an empty file.
	 */
	FUNC35(a, ARCHIVE_OK, FUNC21(a, &ae));
	FUNC34(1, FUNC6(ae));
	FUNC34(0, FUNC7(ae));
	FUNC34(0, FUNC0(ae));
	FUNC34(0, FUNC3(ae));
	FUNC37("empty2", FUNC9(ae));
	FUNC34(AE_IFREG | 0444, FUNC5(ae));
	FUNC34(0, FUNC13(ae));

	/*
	 * Read the sub sub-dir entry back.
	 */
	FUNC35(a, ARCHIVE_OK, FUNC21(a, &ae));
	FUNC34(11, FUNC6(ae));
	FUNC34(300, FUNC7(ae));
	FUNC34(0, FUNC0(ae));
	FUNC34(0, FUNC3(ae));
	FUNC37("dir/subdir/subdir/", FUNC9(ae));
	FUNC34(AE_IFDIR | 0755, FUNC5(ae));
	FUNC34(0, FUNC13(ae));
	FUNC35(a, 0, FUNC18(a, filedata, 10));

	/*
	 * Read the sub dir entry back.
	 */
	FUNC35(a, ARCHIVE_OK, FUNC21(a, &ae));
	FUNC34(11, FUNC6(ae));
	FUNC34(200, FUNC7(ae));
	FUNC34(0, FUNC0(ae));
	FUNC34(0, FUNC3(ae));
	FUNC37("dir/subdir/", FUNC9(ae));
	FUNC34(AE_IFDIR | 0755, FUNC5(ae));
	FUNC34(0, FUNC13(ae));
	FUNC35(a, 0, FUNC18(a, filedata, 10));

	/*
	 * Read the dir entry back.
	 */
	FUNC35(a, ARCHIVE_OK, FUNC21(a, &ae));
	FUNC34(11, FUNC6(ae));
	FUNC34(100, FUNC7(ae));
	FUNC34(0, FUNC0(ae));
	FUNC34(0, FUNC3(ae));
	FUNC37("dir/", FUNC9(ae));
	FUNC34(AE_IFDIR | 0755, FUNC5(ae));
	FUNC34(0, FUNC13(ae));
	FUNC35(a, 0, FUNC18(a, filedata, 10));

	/* Verify the end of the archive. */
	FUNC35(a, ARCHIVE_EOF, FUNC21(a, &ae));

	/* Verify archive format. */
	FUNC35(a, ARCHIVE_FILTER_NONE, FUNC15(a, 0));
	FUNC35(a, ARCHIVE_FORMAT_7ZIP, FUNC16(a));

	FUNC34(ARCHIVE_OK, FUNC17(a));
	FUNC34(ARCHIVE_OK, FUNC19(a));

	FUNC39(buff);
}