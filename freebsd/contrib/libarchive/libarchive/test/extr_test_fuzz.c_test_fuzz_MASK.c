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
struct files {int /*<<< orphan*/ ** names; scalar_t__ uncompress; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ARCHIVE_EOF ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*) ; 
 size_t FUNC2 (struct archive*,char*,size_t const) ; 
 scalar_t__ FUNC3 (struct archive*,void const**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*) ; 
 struct archive* FUNC5 () ; 
 scalar_t__ FUNC6 (struct archive*,struct archive_entry**) ; 
 int FUNC7 (struct archive*,int /*<<< orphan*/ **,int) ; 
 scalar_t__ FUNC8 (struct archive*,char*,size_t) ; 
 scalar_t__ FUNC9 (struct archive*) ; 
 scalar_t__ FUNC10 (struct archive*) ; 
 scalar_t__ FUNC11 (struct archive*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct archive*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 char* FUNC21 (char*) ; 
 char* FUNC22 (size_t const) ; 
 int /*<<< orphan*/  FUNC23 (char*,char*,size_t) ; 
 size_t FUNC24 () ; 
 char* FUNC25 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC26 (char*,...) ; 
 char* FUNC27 (size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (unsigned int) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC30(const struct files *filesets)
{
	const void *blk;
	size_t blk_size;
	int64_t blk_offset;
	int n;
	const char *skip_fuzz_tests;

	skip_fuzz_tests = FUNC21("SKIP_TEST_FUZZ");
	if (skip_fuzz_tests != NULL) {
		FUNC26("Skipping fuzz tests due to SKIP_TEST_FUZZ "
		    "environment variable");
		return;
	}

	for (n = 0; filesets[n].names != NULL; ++n) {
		const size_t buffsize = 30000000;
		struct archive_entry *ae;
		struct archive *a;
		char *rawimage = NULL, *image = NULL, *tmp = NULL;
		size_t size = 0, oldsize = 0;
		int i, q;

		FUNC15(filesets[n].names);
		if (filesets[n].uncompress) {
			int r;
			/* Use format_raw to decompress the data. */
			FUNC12((a = FUNC5()) != NULL);
			FUNC14(a, ARCHIVE_OK,
			    FUNC9(a));
			FUNC14(a, ARCHIVE_OK,
			    FUNC11(a));
			r = FUNC7(a, filesets[n].names, 16384);
			if (r != ARCHIVE_OK) {
				FUNC4(a);
				if (filesets[n].names[0] == NULL || filesets[n].names[1] == NULL) {
					FUNC26("Cannot uncompress fileset");
				} else {
					FUNC26("Cannot uncompress %s", filesets[n].names[0]);
				}
				continue;
			}
			FUNC14(a, ARCHIVE_OK,
			    FUNC6(a, &ae));
			rawimage = FUNC22(buffsize);
			size = FUNC2(a, rawimage, buffsize);
			FUNC14(a, ARCHIVE_EOF,
			    FUNC6(a, &ae));
			FUNC13(ARCHIVE_OK,
			    FUNC4(a));
			FUNC12(size > 0);
			if (filesets[n].names[0] == NULL || filesets[n].names[1] == NULL) {
				FUNC16("Internal buffer is not big enough for "
					"uncompressed test files");
			} else {
				FUNC16("Internal buffer is not big enough for "
					"uncompressed test file: %s", filesets[n].names[0]);
			}
			if (!FUNC12(size < buffsize)) {
				FUNC19(rawimage);
				rawimage = NULL;
				continue;
			}
		} else {
			for (i = 0; filesets[n].names[i] != NULL; ++i)
			{
				char *newraw;
				tmp = FUNC27(&size, filesets[n].names[i]);
				newraw = FUNC25(rawimage, oldsize + size);
				if (!FUNC12(newraw != NULL))
				{
					FUNC19(rawimage);
					rawimage = NULL;
					FUNC19(tmp);
					continue;
				}
				rawimage = newraw;
				FUNC23(rawimage + oldsize, tmp, size);
				oldsize += size;
				size = oldsize;
				FUNC19(tmp);
			}
		}
		if (size == 0) {
			FUNC19(rawimage);
			rawimage = NULL;
			continue;
		}
		image = FUNC22(size);
		FUNC12(image != NULL);
		if (image == NULL) {
			FUNC19(rawimage);
			rawimage = NULL;
			return;
		}

		FUNC12(rawimage != NULL);

		FUNC28((unsigned)FUNC29(NULL));

		for (i = 0; i < 1000; ++i) {
			FILE *f;
			int j, numbytes, trycnt;

			/* Fuzz < 1% of the bytes in the archive. */
			FUNC23(image, rawimage, size);
			q = (int)size / 100;
			if (q < 4)
				q = 4;
			numbytes = (int)(FUNC24() % q);
			for (j = 0; j < numbytes; ++j)
				image[FUNC24() % size] = (char)FUNC24();

			/* Save the messed-up image to a file.
			 * If we crash, that file will be useful. */
			for (trycnt = 0; trycnt < 3; trycnt++) {
				f = FUNC18("after.test.failure.send.this.file."
				    "to.libarchive.maintainers.with.system.details", "wb");
				if (f != NULL)
					break;
#if defined(_WIN32) && !defined(__CYGWIN__)
				/*
				 * Sometimes previous close operation does not completely
				 * end at this time. So we should take a wait while
				 * the operation running.
				 */
				Sleep(100);
#endif
			}
			FUNC12(f != NULL);
			FUNC13((size_t)size, FUNC20(image, 1, (size_t)size, f));
			FUNC17(f);

			// Try to read all headers and bodies.
			FUNC12((a = FUNC5()) != NULL);
			FUNC14(a, ARCHIVE_OK,
			    FUNC9(a));
			FUNC14(a, ARCHIVE_OK,
			    FUNC10(a));

			if (0 == FUNC8(a, image, size)) {
				while(0 == FUNC6(a, &ae)) {
					while (0 == FUNC3(a,
						&blk, &blk_size, &blk_offset))
						continue;
				}
				FUNC1(a);
			}
			FUNC4(a);

			// Just list headers, skip bodies.
			FUNC12((a = FUNC5()) != NULL);
			FUNC14(a, ARCHIVE_OK,
			    FUNC9(a));
			FUNC14(a, ARCHIVE_OK,
			    FUNC10(a));

			if (0 == FUNC8(a, image, size)) {
				while(0 == FUNC6(a, &ae)) {
				}
				FUNC1(a);
			}
			FUNC4(a);
		}
		FUNC19(image);
		FUNC19(rawimage);
	}
}