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
struct contents {scalar_t__ s; int o; char* d; } ;
struct archive_entry {int dummy; } ;
struct archive_contents {int /*<<< orphan*/ * filename; struct contents* contents; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_EOF ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED ; 
 int FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int FUNC2 (struct archive*) ; 
 int FUNC3 (struct archive*,void const**,scalar_t__*,int*) ; 
 char FUNC4 (struct archive*) ; 
 int FUNC5 (struct archive*) ; 
 struct archive* FUNC6 () ; 
 int FUNC7 (struct archive*,struct archive_entry**) ; 
 scalar_t__ FUNC8 (struct archive*,char const*,int) ; 
 scalar_t__ FUNC9 (struct archive*) ; 
 scalar_t__ FUNC10 (struct archive*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int,char) ; 
 int /*<<< orphan*/  FUNC13 (struct archive*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*,...) ; 

__attribute__((used)) static void
FUNC17(const char *name, struct archive_contents *ac)
{
	struct archive_entry *ae;
	int err;
	/* data, size, offset of next expected block. */
	struct contents expect;
	/* data, size, offset of block read from archive. */
	struct contents actual;
	const void *p;
	struct archive *a;

	FUNC15(name);

	FUNC11((a = FUNC6()) != NULL);
	FUNC11(0 == FUNC9(a));
	FUNC11(0 == FUNC10(a));
	FUNC16("Can't open %s", name);
	FUNC11(0 == FUNC8(a, name, 3));

	while (ac->filename != NULL) {
		struct contents *cts = ac->contents;

		if (!FUNC13(a, 0, FUNC7(a, &ae))) {
			FUNC12(ARCHIVE_OK, FUNC4(a));
			return;
		}
		FUNC16("Name mismatch in archive %s", name);
		FUNC14(ac->filename, FUNC1(ae));
		FUNC12(FUNC0(ae), 0);
		FUNC13(a, FUNC5(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

		expect = *cts++;
		while (0 == (err = FUNC3(a,
				 &p, &actual.s, &actual.o))) {
			actual.d = p;
			while (actual.s > 0) {
				char c = *actual.d;
				if(actual.o < expect.o) {
					/*
					 * Any byte before the expected
					 * data must be NULL.
					 */
					FUNC16("%s: pad at offset %d "
					    "should be zero", name, actual.o);
					FUNC12(c, 0);
				} else if (actual.o == expect.o) {
					/*
					 * Data at matching offsets must match.
					 */
					FUNC12(c, *expect.d);
					expect.d++;
					expect.o++;
					expect.s--;
					/* End of expected? step to next expected. */
					if (expect.s <= 0)
						expect = *cts++;
				} else {
					/*
					 * We found data beyond that expected.
					 */
					FUNC16("%s: Unexpected trailing data",
					    name);
					FUNC11(actual.o <= expect.o);
					FUNC4(a);
					return;
				}
				actual.d++;
				actual.o++;
				actual.s--;
			}
		}
		FUNC16("%s: should be end of entry", name);
		FUNC13(a, err, ARCHIVE_EOF);
		FUNC16("%s: Size returned at EOF must be zero", name);
		FUNC12((int)actual.s, 0);
		FUNC16("%s: Offset of final empty chunk must be same as file size", name);
		FUNC12(actual.o, expect.o);
		/* Step to next file description. */
		++ac;
	}

	err = FUNC7(a, &ae);
	FUNC13(a, ARCHIVE_EOF, err);

	FUNC13(a, ARCHIVE_OK, FUNC2(a));
	FUNC12(ARCHIVE_OK, FUNC4(a));
}