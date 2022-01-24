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
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int S_IFDIR ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int FUNC2 (struct archive_entry*) ; 
 struct archive_entry* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*) ; 
 int FUNC7 (struct archive*) ; 
 struct archive* FUNC8 () ; 
 int FUNC9 (struct archive*,struct archive_entry**) ; 
 scalar_t__ FUNC10 (struct archive*,char*,size_t) ; 
 scalar_t__ FUNC11 (struct archive*) ; 
 scalar_t__ FUNC12 (struct archive*) ; 
 scalar_t__ FUNC13 (struct archive*) ; 
 int /*<<< orphan*/  FUNC14 (struct archive*) ; 
 int FUNC15 (struct archive*) ; 
 scalar_t__ FUNC16 (struct archive*,struct archive_entry*) ; 
 struct archive* FUNC17 () ; 
 scalar_t__ FUNC18 (struct archive*,char*,int,size_t*) ; 
 scalar_t__ FUNC19 (struct archive*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (struct archive*) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (int,int) ; 
 int /*<<< orphan*/  FUNC24 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC27 (char*,char*) ; 
 int /*<<< orphan*/  FUNC28 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC29 (char*) ; 

__attribute__((used)) static void
FUNC30(const char *prefix, int dlen, int flen)
{
	char buff[8192];
	char filename[400];
	char dirname[400];
	struct archive_entry *ae;
	struct archive *a;
	size_t used;
	char *p;
	int i;

	p = filename;
	if (prefix) {
		FUNC28(filename, prefix);
		p += FUNC29(p);
	}
	if (dlen > 0) {
		for (i = 0; i < dlen; i++)
			*p++ = 'a';
		*p++ = '/';
	}
	for (i = 0; i < flen; i++)
		*p++ = 'b';
	*p = '\0';

	FUNC28(dirname, filename);

	/* Create a new archive in memory. */
	FUNC21((a = FUNC17()) != NULL);
	FUNC22(0 == FUNC20(a));
	FUNC22(0 == FUNC13(a));
	FUNC22(0 == FUNC19(a,0));
	FUNC22(0 == FUNC18(a, buff, sizeof(buff), &used));

	/*
	 * Write a file to it.
	 */
	FUNC21((ae = FUNC3()) != NULL);
	FUNC0(ae, filename);
	FUNC5(ae, S_IFREG | 0755);
	FUNC26("Pathname %d/%d", dlen, flen);
	FUNC22(0 == FUNC16(a, ae));
	FUNC1(ae);

	/*
	 * Write a dir to it (without trailing '/').
	 */
	FUNC21((ae = FUNC3()) != NULL);
	FUNC0(ae, dirname);
	FUNC5(ae, S_IFDIR | 0755);
	FUNC26("Dirname %d/%d", dlen, flen);
	FUNC22(0 == FUNC16(a, ae));
	FUNC1(ae);

	/* Tar adds a '/' to directory names. */
	FUNC27(dirname, "/");

	/*
	 * Write a dir to it (with trailing '/').
	 */
	FUNC21((ae = FUNC3()) != NULL);
	FUNC0(ae, dirname);
	FUNC5(ae, S_IFDIR | 0755);
	FUNC26("Dirname %d/%d", dlen, flen);
	FUNC22(0 == FUNC16(a, ae));
	FUNC1(ae);

	/* Close out the archive. */
	FUNC24(a, ARCHIVE_OK, FUNC14(a));
	FUNC23(ARCHIVE_OK, FUNC15(a));

	/*
	 * Now, read the data back.
	 */
	FUNC21((a = FUNC8()) != NULL);
	FUNC22(0 == FUNC12(a));
	FUNC22(0 == FUNC11(a));
	FUNC22(0 == FUNC10(a, buff, used));

	/* Read the file and check the filename. */
	FUNC22(0 == FUNC9(a, &ae));
	FUNC25(filename, FUNC4(ae));
	FUNC23((S_IFREG | 0755), FUNC2(ae));

	/*
	 * Read the two dirs and check the names.
	 *
	 * Both dirs should read back with the same name, since
	 * tar should add a trailing '/' to any dir that doesn't
	 * already have one.  We only report the first such failure
	 * here.
	 */
	FUNC22(0 == FUNC9(a, &ae));
	FUNC25(dirname, FUNC4(ae));
	FUNC21((S_IFDIR | 0755) == FUNC2(ae));

	FUNC22(0 == FUNC9(a, &ae));
	FUNC25(dirname, FUNC4(ae));
	FUNC21((S_IFDIR | 0755) == FUNC2(ae));

	/* Verify the end of the archive. */
	FUNC21(1 == FUNC9(a, &ae));
	FUNC24(a, ARCHIVE_OK, FUNC6(a));
	FUNC23(ARCHIVE_OK, FUNC7(a));
}