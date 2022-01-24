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
 size_t ARCHIVE_EOF ; 
 size_t ARCHIVE_FILTER_NONE ; 
 size_t ARCHIVE_FORMAT_7ZIP ; 
 size_t ARCHIVE_OK ; 
 int LARGE_SIZE ; 
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
 int /*<<< orphan*/  FUNC11 (struct archive_entry*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC13 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct archive*) ; 
 int /*<<< orphan*/  FUNC15 (struct archive*) ; 
 int /*<<< orphan*/  FUNC16 (struct archive*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC17 (struct archive*) ; 
 struct archive* FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC20 (struct archive*) ; 
 int /*<<< orphan*/  FUNC21 (struct archive*) ; 
 int /*<<< orphan*/  FUNC22 (struct archive*) ; 
 int /*<<< orphan*/  FUNC23 (struct archive*) ; 
 int /*<<< orphan*/  FUNC24 (struct archive*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC25 (struct archive*) ; 
 int /*<<< orphan*/  FUNC26 (struct archive*,struct archive_entry*) ; 
 struct archive* FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (struct archive*,char*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC29 (struct archive*) ; 
 size_t FUNC30 (struct archive*,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (struct archive*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC35 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (char*) ; 
 char* FUNC37 (size_t) ; 
 int /*<<< orphan*/  FUNC38 (char*,char,size_t) ; 
 scalar_t__ FUNC39 () ; 
 int /*<<< orphan*/  FUNC40 (struct archive*,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC41 (char*,char const*) ; 
 scalar_t__ FUNC42 (char const*,char*) ; 

__attribute__((used)) static void
FUNC43(const char *compression_type)
{
	struct archive_entry *ae;
	struct archive *a;
	size_t used;
	size_t buffsize = LARGE_SIZE + 1024 * 256;
	size_t datasize = LARGE_SIZE;
	char *buff, *filedata, *filedata2;
	unsigned i;

	FUNC31((buff = FUNC37(buffsize)) != NULL);
	FUNC31((filedata = FUNC37(datasize)) != NULL);
	FUNC31((filedata2 = FUNC37(datasize)) != NULL);

	/* Create a new archive in memory. */
	FUNC31((a = FUNC27()) != NULL);
	if (a == NULL || buff == NULL || filedata == NULL || filedata2 == NULL) {
		FUNC25(a);
		FUNC36(buff);
		FUNC36(filedata);
		FUNC36(filedata2);
		return;
	}
	FUNC33(a, ARCHIVE_OK, FUNC29(a));
	if (compression_type != NULL &&
	    ARCHIVE_OK != FUNC30(a, "7zip",
	    "compression", compression_type)) {
		FUNC41("%s writing not fully supported on this platform",
		   compression_type);
		FUNC32(ARCHIVE_OK, FUNC25(a));
		FUNC36(buff);
		FUNC36(filedata);
		FUNC36(filedata2);
		return;
	}
	FUNC33(a, ARCHIVE_OK, FUNC22(a));
	FUNC33(a, ARCHIVE_OK,
	    FUNC28(a, buff, buffsize, &used));

	/*
	 * Write a large file to it.
	 */
	FUNC31((ae = FUNC7()) != NULL);
	FUNC10(ae, 1, 100);
	FUNC32(1, FUNC5(ae));
	FUNC32(100, FUNC6(ae));
	FUNC1(ae, "file");
	FUNC35("file", FUNC8(ae));
	FUNC9(ae, AE_IFREG | 0755);
	FUNC32((AE_IFREG | 0755), FUNC4(ae));
	FUNC11(ae, datasize);

	FUNC32(0, FUNC26(a, ae));
	FUNC3(ae);
	if (FUNC42(compression_type, "ppmd") == 0) {
		/* NOTE: PPMd cannot handle random data correctly.*/
		FUNC38(filedata, 'a', datasize);
	} else {
		for (i = 0; i < datasize; i++)
			filedata[i] = (char)FUNC39();
	}
	FUNC32(datasize, FUNC24(a, filedata, datasize));

	/* Close out the archive. */
	FUNC33(a, ARCHIVE_OK, FUNC23(a));
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
	FUNC33(a, ARCHIVE_OK, FUNC40(a, buff, used, 7));

	/*
	 * Read and verify a large file.
	 */
	FUNC33(a, ARCHIVE_OK, FUNC19(a, &ae));
	FUNC32(1, FUNC5(ae));
	FUNC32(100, FUNC6(ae));
	FUNC32(0, FUNC0(ae));
	FUNC32(0, FUNC2(ae));
	FUNC35("file", FUNC8(ae));
	FUNC32(AE_IFREG | 0755, FUNC4(ae));
	FUNC32(datasize, FUNC12(ae));
	FUNC33(a, datasize, FUNC16(a, filedata2, datasize));
	FUNC34(filedata, filedata2, datasize);

	/* Verify the end of the archive. */
	FUNC33(a, ARCHIVE_EOF, FUNC19(a, &ae));

	/* Verify archive format. */
	FUNC33(a, ARCHIVE_FILTER_NONE, FUNC13(a, 0));
	FUNC33(a, ARCHIVE_FORMAT_7ZIP, FUNC14(a));

	FUNC32(ARCHIVE_OK, FUNC15(a));
	FUNC32(ARCHIVE_OK, FUNC17(a));

	FUNC36(buff);
	FUNC36(filedata);
	FUNC36(filedata2);
}