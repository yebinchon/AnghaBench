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
 int AE_IFDIR ; 
 int AE_IFREG ; 
 int ARCHIVE_EOF ; 
 int ARCHIVE_FILTER_NONE ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*) ; 
 struct archive_entry* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_entry*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct archive_entry*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct archive_entry*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct archive_entry*) ; 
 int FUNC15 (struct archive*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct archive*) ; 
 int /*<<< orphan*/  FUNC17 (struct archive*) ; 
 int /*<<< orphan*/  FUNC18 (struct archive*) ; 
 struct archive* FUNC19 () ; 
 int FUNC20 (struct archive*,struct archive_entry**) ; 
 int FUNC21 (struct archive*) ; 
 int FUNC22 (struct archive*) ; 
 int FUNC23 (struct archive*) ; 
 int FUNC24 (struct archive*) ; 
 int /*<<< orphan*/  FUNC25 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct archive*) ; 
 int /*<<< orphan*/  FUNC27 (struct archive*,struct archive_entry*) ; 
 struct archive* FUNC28 () ; 
 int FUNC29 (struct archive*,char*,size_t,size_t*) ; 
 int FUNC30 (struct archive*,char const*) ; 
 int FUNC31 (struct archive*,char const*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (struct archive*,int,int) ; 
 int /*<<< orphan*/  FUNC35 (char*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC36 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (char*) ; 
 char* FUNC38 (size_t) ; 
 int FUNC39 (struct archive*,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC40 (char*,char const*) ; 

__attribute__((used)) static void
FUNC41(const char *format_name, const char *compression_type,
    int format_id, int dot_stored, const void *image, size_t image_size)
{
	struct archive_entry *ae;
	struct archive *a;
	size_t used;
	size_t buffsize = 1024 * 1024;
	char *buff;
	int r;

	FUNC32((buff = FUNC38(buffsize)) != NULL);
	if (buff == NULL)
		return;

	/* Create a new archive in memory. */
	FUNC32((a = FUNC28()) != NULL);
	r = FUNC30(a, format_name);
	if (r == ARCHIVE_WARN) {
		FUNC40("%s format not fully supported on this platform",
		   compression_type);
		FUNC33(ARCHIVE_OK, FUNC26(a));
		FUNC37(buff);
		return;
	}
	FUNC34(a, ARCHIVE_OK, r);
	if (compression_type != NULL &&
	    ARCHIVE_OK != FUNC31(a, format_name,
	    "compression", compression_type)) {
		FUNC40("%s writing not fully supported on this platform",
		   compression_type);
		FUNC33(ARCHIVE_OK, FUNC26(a));
		FUNC37(buff);
		return;
	}
	FUNC34(a, ARCHIVE_OK, FUNC23(a));
	FUNC34(a, ARCHIVE_OK,
	    FUNC29(a, buff, buffsize, &used));

	/*
	 * Write a file to it.
	 */
	FUNC32((ae = FUNC7()) != NULL);
	FUNC12(ae, 1, 0);
	FUNC33(1, FUNC6(ae));
	FUNC10(ae, 1, 0);
	FUNC33(1, FUNC2(ae));
	FUNC9(ae, 1, 0);
	FUNC33(1, FUNC0(ae));
	FUNC1(ae, "file");
	FUNC36("file", FUNC8(ae));
	FUNC11(ae, AE_IFREG | 0755);
	FUNC33((AE_IFREG | 0755), FUNC5(ae));
	FUNC13(ae, 8);
	FUNC33(0, FUNC27(a, ae));
	FUNC4(ae);
	FUNC33(8, FUNC25(a, "12345678", 8));

	/* Close out the archive. */
	FUNC34(a, ARCHIVE_OK, FUNC24(a));
	FUNC33(ARCHIVE_OK, FUNC26(a));

	if (image && image_size > 0) {
		FUNC35(buff, image, image_size);
	}
	if (format_id > 0) {
		/*
		 * Now, read the data back.
		 */
		/* With the test memory reader -- seeking mode. */
		FUNC32((a = FUNC19()) != NULL);
		FUNC34(a, ARCHIVE_OK,
		    FUNC22(a));
		FUNC34(a, ARCHIVE_OK,
		    FUNC21(a));
		FUNC34(a, ARCHIVE_OK,
		    FUNC39(a, buff, used, 7));

		if (dot_stored & 1) {
			FUNC34(a, ARCHIVE_OK,
			    FUNC20(a, &ae));
			FUNC36(".", FUNC8(ae));
			FUNC33(AE_IFDIR, FUNC3(ae));
		}
		/*
		 * Read and verify the file.
		 */
		FUNC34(a, ARCHIVE_OK, FUNC20(a, &ae));
		FUNC33(1, FUNC6(ae));
		if (dot_stored & 2) {
			FUNC36("./file", FUNC8(ae));
		} else {
			FUNC36("file", FUNC8(ae));
		}
		FUNC33(AE_IFREG, FUNC3(ae));
		FUNC33(8, FUNC14(ae));

		/* Verify the end of the archive. */
		FUNC34(a, ARCHIVE_EOF, FUNC20(a, &ae));

		/* Verify archive format. */
		FUNC34(a, ARCHIVE_FILTER_NONE,
		    FUNC15(a, 0));
		FUNC34(a, format_id, FUNC16(a));

		FUNC33(ARCHIVE_OK, FUNC17(a));
		FUNC33(ARCHIVE_OK, FUNC18(a));
	}
	FUNC37(buff);
}