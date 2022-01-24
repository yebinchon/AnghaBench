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
 int /*<<< orphan*/  AE_IFDIR ; 
 int /*<<< orphan*/  AE_IFREG ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 struct archive_entry* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*,int) ; 
 char* FUNC6 (struct archive*) ; 
 int FUNC7 (struct archive*) ; 
 int FUNC8 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*) ; 
 struct archive* FUNC10 () ; 
 int FUNC11 (struct archive*,struct archive_entry**) ; 
 int FUNC12 (struct archive*,char*,size_t) ; 
 int FUNC13 (struct archive*) ; 
 int FUNC14 (struct archive*) ; 
 int FUNC15 (struct archive*) ; 
 int FUNC16 (struct archive*) ; 
 int FUNC17 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct archive*) ; 
 int FUNC19 (struct archive*,struct archive_entry*) ; 
 struct archive* FUNC20 () ; 
 int FUNC21 (struct archive*,char*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct archive*,int,int) ; 
 int /*<<< orphan*/  FUNC25 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC26 (char*) ; 
 char* FUNC27 (size_t) ; 
 int FUNC28 (struct archive*) ; 
 int FUNC29 (struct archive*) ; 
 int FUNC30 (struct archive*) ; 

__attribute__((used)) static void
FUNC31(int	(*set_format)(struct archive *))
{
	char filedata[64];
	struct archive_entry *ae;
	struct archive *a;
	size_t used;
	size_t buffsize = 1000000;
	char *buff;
	const char *err;

	buff = FUNC27(buffsize);

	/* Create a new archive in memory. */
	FUNC22((a = FUNC20()) != NULL);
	FUNC24(a, ARCHIVE_OK, (*set_format)(a));
	FUNC24(a, ARCHIVE_OK, FUNC15(a));
	FUNC24(a, ARCHIVE_OK, FUNC21(a, buff, buffsize, &used));

	/*
	 * Write a file to it.
	 */
	FUNC22((ae = FUNC2()) != NULL);
	FUNC4(ae, "test");
	FUNC3(ae, AE_IFREG);
	FUNC24(a, ARCHIVE_OK, FUNC19(a, ae));
	FUNC1(ae);
	FUNC24(a, 9, FUNC17(a, "12345678", 9));
	FUNC24(a, ARCHIVE_OK, FUNC16(a));
	FUNC23(ARCHIVE_OK, FUNC18(a));

	/*
	 * Read from it.
	 */
	FUNC22((a = FUNC10()) != NULL);
	FUNC24(a, ARCHIVE_OK, FUNC14(a));
	FUNC24(a, ARCHIVE_OK, FUNC13(a));
	FUNC24(a, ARCHIVE_OK, FUNC12(a, buff, used));

	FUNC24(a, ARCHIVE_OK, FUNC11(a, &ae));
	FUNC24(a, 9, FUNC8(a, filedata, 10));
	FUNC25(filedata, "12345678", 9);
	FUNC24(a, ARCHIVE_OK, FUNC7(a));
	FUNC23(ARCHIVE_OK, FUNC9(a));

	/* Create a new archive */
	FUNC22((a = FUNC20()) != NULL);
	FUNC24(a, ARCHIVE_OK, (*set_format)(a));
	FUNC24(a, ARCHIVE_OK, FUNC15(a));
	FUNC24(a, ARCHIVE_OK, FUNC21(a, buff, buffsize, &used));

	/* write first file: that should succeed */
	FUNC22((ae = FUNC2()) != NULL);
	FUNC4(ae, "test");
	FUNC3(ae, AE_IFREG);
	FUNC24(a, ARCHIVE_OK, FUNC19(a, ae));
	FUNC1(ae);
	FUNC24(a, 9, FUNC17(a, "12345678", 9));

	/* write second file: this should fail */
	FUNC22((ae = FUNC2()) != NULL);
	FUNC4(ae, "test2");
	FUNC3(ae, AE_IFREG);
	FUNC24(a, ARCHIVE_FATAL, FUNC19(a, ae));
	err = FUNC6(a);
	FUNC25(err, "Raw format only supports one entry per archive", 47);
	FUNC1(ae);

	FUNC24(a, ARCHIVE_OK, FUNC16(a));
	FUNC23(ARCHIVE_OK, FUNC18(a));

	/* Create a new archive */
	FUNC22((a = FUNC20()) != NULL);
	FUNC24(a, ARCHIVE_OK, (*set_format)(a));
	FUNC24(a, ARCHIVE_OK, FUNC15(a));
	FUNC24(a, ARCHIVE_OK, FUNC21(a, buff, buffsize, &used));

	/* write a directory: this should fail */
	FUNC22((ae = FUNC2()) != NULL);
	FUNC0(ae, "dir");
	FUNC3(ae, AE_IFDIR);
	FUNC5(ae, 512);
	FUNC24(a, ARCHIVE_FATAL, FUNC19(a, ae));
	err = FUNC6(a);
	FUNC25(err, "Raw format only supports filetype AE_IFREG", 43);
	FUNC1(ae);

	FUNC24(a, ARCHIVE_OK, FUNC16(a));
	FUNC23(ARCHIVE_OK, FUNC18(a));

	FUNC26(buff);
}