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
typedef  struct archive archive ;

/* Variables and functions */
 int /*<<< orphan*/  AE_IFREG ; 
 int ARCHIVE_FAILED ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 int S_IFDIR ; 
 int S_IFREG ; 
 scalar_t__ FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*,char*) ; 
 scalar_t__ FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 scalar_t__ FUNC4 (struct archive_entry*) ; 
 scalar_t__ FUNC5 (struct archive_entry*) ; 
 int FUNC6 (struct archive_entry*) ; 
 struct archive_entry* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct archive_entry*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct archive_entry*,int) ; 
 scalar_t__ FUNC13 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC14 (struct archive_entry*) ; 
 int /*<<< orphan*/ * FUNC15 (struct archive*) ; 
 int FUNC16 (struct archive*) ; 
 int FUNC17 (struct archive*,char*,int) ; 
 scalar_t__ FUNC18 (struct archive*) ; 
 struct archive* FUNC19 () ; 
 int FUNC20 (struct archive*,struct archive_entry**) ; 
 scalar_t__ FUNC21 (struct archive*,char*,size_t) ; 
 scalar_t__ FUNC22 (struct archive*) ; 
 scalar_t__ FUNC23 (struct archive*) ; 
 scalar_t__ FUNC24 (struct archive*) ; 
 int FUNC25 (struct archive*) ; 
 int FUNC26 (struct archive*,char*,int) ; 
 scalar_t__ FUNC27 (struct archive*) ; 
 scalar_t__ FUNC28 (struct archive*,struct archive_entry*) ; 
 struct archive* FUNC29 () ; 
 scalar_t__ FUNC30 (struct archive*,char*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC31 (int) ; 
 int /*<<< orphan*/  FUNC32 (int) ; 
 int /*<<< orphan*/  FUNC33 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC34 (struct archive*,int,int) ; 
 int /*<<< orphan*/  FUNC35 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC36 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (char*) ; 
 int /*<<< orphan*/  FUNC38 (char*) ; 
 char* FUNC39 (size_t) ; 
 scalar_t__ FUNC40 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC41 (char*,char*) ; 
 char* FUNC42 (char*) ; 
 int FUNC43 (struct archive*) ; 

__attribute__((used)) static void
FUNC44(int	(*set_format)(struct archive *))
{
	char filedata[64];
	struct archive_entry *ae;
	struct archive *a;
	char *p;
	size_t used;
	size_t buffsize = 1000000;
	char *buff;
	int damaged = 0;

	buff = FUNC39(buffsize);

	/* Create a new archive in memory. */
	FUNC31((a = FUNC29()) != NULL);
	FUNC32(0 == (*set_format)(a));
	FUNC32(0 == FUNC24(a));
	FUNC32(0 == FUNC30(a, buff, buffsize, &used));

	/*
	 * Write a file to it.
	 */
	FUNC31((ae = FUNC7()) != NULL);
	FUNC11(ae, 1, 10);
	FUNC31(1 == FUNC5(ae));
	FUNC31(10 == FUNC6(ae));
	p = FUNC42("file");
	FUNC1(ae, p);
	FUNC41(p, "XXXX");
	FUNC38(p);
	FUNC36("file", FUNC8(ae));
	FUNC10(ae, S_IFREG | 0755);
	FUNC31((S_IFREG | 0755) == FUNC4(ae));
	FUNC12(ae, 8);

	FUNC32(0 == FUNC28(a, ae));
	FUNC3(ae);
	FUNC32(8 == FUNC26(a, "12345678", 9));

	/*
	 * Write another file to it.
	 */
	FUNC31((ae = FUNC7()) != NULL);
	FUNC11(ae, 1, 10);
	FUNC31(1 == FUNC5(ae));
	FUNC31(10 == FUNC6(ae));
	p = FUNC42("file2");
	FUNC1(ae, p);
	FUNC41(p, "XXXX");
	FUNC38(p);
	FUNC36("file2", FUNC8(ae));
	FUNC10(ae, S_IFREG | 0755);
	FUNC31((S_IFREG | 0755) == FUNC4(ae));
	FUNC12(ae, 4);

	FUNC32(0 == FUNC28(a, ae));
	FUNC3(ae);
	FUNC32(4 == FUNC26(a, "1234", 5));

	/*
	 * Write a file with a name, filetype, and size.
	 */
	FUNC31((ae = FUNC7()) != NULL);
	FUNC1(ae, "name");
	FUNC12(ae, 0);
	FUNC9(ae, AE_IFREG);
	FUNC33(ARCHIVE_OK, FUNC28(a, ae));
	FUNC31(FUNC15(a) == NULL);
	FUNC3(ae);

	/*
	 * Write a file with a name and filetype but no size.
	 */
	FUNC31((ae = FUNC7()) != NULL);
	FUNC1(ae, "name");
	FUNC14(ae);
	FUNC9(ae, AE_IFREG);
	FUNC33(ARCHIVE_FAILED, FUNC28(a, ae));
	FUNC31(FUNC15(a) != NULL);
	FUNC3(ae);

	/*
	 * Write a file with a name and size but no filetype.
	 */
	FUNC31((ae = FUNC7()) != NULL);
	FUNC1(ae, "name");
	FUNC12(ae, 0);
	FUNC33(ARCHIVE_FAILED, FUNC28(a, ae));
	FUNC31(FUNC15(a) != NULL);
	FUNC3(ae);

	/*
	 * Write a file with a size and filetype but no name.
	 */
	FUNC31((ae = FUNC7()) != NULL);
	FUNC12(ae, 0);
	FUNC9(ae, AE_IFREG);
	FUNC33(ARCHIVE_FAILED, FUNC28(a, ae));
	FUNC31(FUNC15(a) != NULL);
	FUNC3(ae);

	/*
	 * Write a directory to it.
	 */
	FUNC31((ae = FUNC7()) != NULL);
	FUNC11(ae, 11, 110);
	FUNC1(ae, "dir");
	FUNC10(ae, S_IFDIR | 0755);
	FUNC12(ae, 512);

	FUNC32(0 == FUNC28(a, ae));
	FUNC33(0, FUNC13(ae));
	FUNC3(ae);
	FUNC34(a, 0, FUNC26(a, "12345678", 9));


	/* Close out the archive. */
	FUNC34(a, ARCHIVE_OK, FUNC25(a));
	FUNC33(ARCHIVE_OK, FUNC27(a));

	/*
	 * Damage the second entry to test the search-ahead recovery.
	 * TODO: Move the damage-recovery checking to a separate test;
	 * it doesn't really belong in this write test.
	 */
	{
		int i;
		for (i = 80; i < 150; i++) {
			if (FUNC40(buff + i, "07070", 5) == 0) {
				damaged = 1;
				buff[i] = 'X';
				break;
			}
		}
	}
	FUNC37("Unable to locate the second header for damage-recovery test.");
	FUNC31(damaged == 1);

	/*
	 * Now, read the data back.
	 */
	FUNC31((a = FUNC19()) != NULL);
	FUNC32(0 == FUNC23(a));
	FUNC32(0 == FUNC22(a));
	FUNC32(0 == FUNC21(a, buff, used));

	if (!FUNC34(a, 0, FUNC20(a, &ae))) {
		FUNC18(a);
		return;
	}

	FUNC33(1, FUNC5(ae));
	/* Not the same as above: cpio doesn't store hi-res times. */
	FUNC31(0 == FUNC6(ae));
	FUNC31(0 == FUNC0(ae));
	FUNC31(0 == FUNC2(ae));
	FUNC36("file", FUNC8(ae));
	FUNC33((S_IFREG | 0755), FUNC4(ae));
	FUNC33(8, FUNC13(ae));
	FUNC32(8 == FUNC17(a, filedata, 10));
	FUNC35(filedata, "12345678", 8);

	/*
	 * The second file can't be read because we damaged its header.
	 */

	/*
	 * Read the third file back.
	 * ARCHIVE_WARN here because the damaged entry was skipped.
	 */
	FUNC34(a, ARCHIVE_WARN, FUNC20(a, &ae));
	FUNC36("name", FUNC8(ae));

	/*
	 * Read the dir entry back.
	 */
	FUNC34(a, ARCHIVE_OK, FUNC20(a, &ae));
	FUNC33(11, FUNC5(ae));
	FUNC31(0 == FUNC6(ae));
	FUNC31(0 == FUNC0(ae));
	FUNC31(0 == FUNC2(ae));
	FUNC36("dir", FUNC8(ae));
	FUNC33((S_IFDIR | 0755), FUNC4(ae));
	FUNC33(0, FUNC13(ae));
	FUNC34(a, 0, FUNC17(a, filedata, 10));

	/* Verify the end of the archive. */
	FUNC34(a, 1, FUNC20(a, &ae));
	FUNC34(a, ARCHIVE_OK, FUNC16(a));
	FUNC33(ARCHIVE_OK, FUNC18(a));

	FUNC38(buff);
}