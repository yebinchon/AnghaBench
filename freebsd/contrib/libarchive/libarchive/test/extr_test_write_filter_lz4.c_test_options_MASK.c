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
 int /*<<< orphan*/  AE_IFREG ; 
 int ARCHIVE_FILTER_LZ4 ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 struct archive_entry* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*,size_t) ; 
 int FUNC6 (struct archive_entry*) ; 
 int FUNC7 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int FUNC10 (struct archive*) ; 
 int FUNC11 (struct archive*) ; 
 struct archive* FUNC12 () ; 
 int FUNC13 (struct archive*,struct archive_entry**) ; 
 int FUNC14 (struct archive*,char*,size_t) ; 
 int FUNC15 (struct archive*) ; 
 int FUNC16 (struct archive*) ; 
 int FUNC17 (struct archive*) ; 
 int FUNC18 (struct archive*) ; 
 scalar_t__ FUNC19 (struct archive*,char*,size_t) ; 
 int FUNC20 (struct archive*) ; 
 int FUNC21 (struct archive*,struct archive_entry*) ; 
 struct archive* FUNC22 () ; 
 int FUNC23 (struct archive*,char*,size_t,size_t*) ; 
 int FUNC24 (struct archive*,int) ; 
 int FUNC25 (struct archive*,int) ; 
 int FUNC26 (struct archive*) ; 
 int FUNC27 (struct archive*,char const*) ; 
 int /*<<< orphan*/  FUNC28 (int) ; 
 int /*<<< orphan*/  FUNC29 (int) ; 
 int /*<<< orphan*/  FUNC30 (int,int) ; 
 int /*<<< orphan*/  FUNC31 (struct archive*,int,int) ; 
 int /*<<< orphan*/  FUNC32 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC33 (int,size_t) ; 
 int /*<<< orphan*/  FUNC34 () ; 
 int /*<<< orphan*/  FUNC35 (char*) ; 
 scalar_t__ FUNC36 (size_t) ; 
 int /*<<< orphan*/  FUNC37 (char*) ; 
 int /*<<< orphan*/  FUNC38 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC39(const char *options)
{
	struct archive_entry *ae;
	struct archive* a;
	char *buff, *data;
	size_t buffsize, datasize;
	char path[16];
	size_t used1;
	int i, r, use_prog = 0, filecount;

	FUNC28((a = FUNC22()) != NULL);
	r = FUNC17(a);
	if (FUNC9() == NULL) {
		if (!FUNC34()) {
			FUNC37("lz4 writing not supported on this platform");
			FUNC30(ARCHIVE_WARN, r);
			FUNC30(ARCHIVE_OK, FUNC20(a));
			return;
		} else {
			FUNC30(ARCHIVE_WARN, r);
			use_prog = 1;
		}
	} else {
		FUNC30(ARCHIVE_OK, r);
	}
	FUNC30(ARCHIVE_OK, FUNC20(a));

	buffsize = 2000000;
	FUNC28(NULL != (buff = (char *)FUNC36(buffsize)));

	datasize = 10000;
	FUNC28(NULL != (data = (char *)FUNC33(1, datasize)));
	filecount = 10;

	/*
	 * Write a filecount files and read them all back.
	 */
	FUNC28((a = FUNC22()) != NULL);
	FUNC31(a, ARCHIVE_OK, FUNC26(a));
	FUNC31(a, (use_prog)?ARCHIVE_WARN:ARCHIVE_OK,
	    FUNC17(a));
	FUNC31(a, ARCHIVE_OK,
	    FUNC27(a, options));
	FUNC31(a, ARCHIVE_OK,
	    FUNC25(a, 1024));
	FUNC31(a, ARCHIVE_OK,
	    FUNC24(a, 1024));
	FUNC30(ARCHIVE_FILTER_LZ4, FUNC7(a, 0));
	FUNC32("lz4", FUNC8(a, 0));
	FUNC31(a, ARCHIVE_OK,
	    FUNC23(a, buff, buffsize, &used1));
	FUNC28((ae = FUNC2()) != NULL);
	FUNC4(ae, AE_IFREG);
	FUNC5(ae, datasize);
	for (i = 0; i < filecount; i++) {
		FUNC38(path, "file%03d", i);
		FUNC0(ae, path);
		FUNC31(a, ARCHIVE_OK, FUNC21(a, ae));
		FUNC29(datasize
		    == (size_t)FUNC19(a, data, datasize));
	}
	FUNC1(ae);
	FUNC31(a, ARCHIVE_OK, FUNC18(a));
	FUNC30(ARCHIVE_OK, FUNC20(a));

	FUNC28((a = FUNC12()) != NULL);
	FUNC31(a, ARCHIVE_OK, FUNC16(a));
	r = FUNC15(a);
	if (r == ARCHIVE_WARN) {
		FUNC37("Can't verify lz4 writing by reading back;"
		    " lz4 reading not fully supported on this platform");
	} else {
		FUNC31(a, ARCHIVE_OK,
		    FUNC14(a, buff, used1));
		for (i = 0; i < filecount; i++) {
			FUNC38(path, "file%03d", i);
			if (!FUNC30(ARCHIVE_OK,
				FUNC13(a, &ae)))
				break;
			FUNC32(path, FUNC3(ae));
			FUNC30((int)datasize, FUNC6(ae));
		}
		FUNC31(a, ARCHIVE_OK, FUNC10(a));
	}
	FUNC30(ARCHIVE_OK, FUNC11(a));

	/*
	 * Clean up.
	 */
	FUNC35(data);
	FUNC35(buff);
}