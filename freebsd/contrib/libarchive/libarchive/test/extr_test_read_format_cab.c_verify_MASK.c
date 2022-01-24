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
typedef  int /*<<< orphan*/  zero ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  enum comp_type { ____Placeholder_comp_type } comp_type ;
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 int AE_IFREG ; 
 int ARCHIVE_EOF ; 
 scalar_t__ ARCHIVE_FATAL ; 
 int ARCHIVE_FILTER_NONE ; 
 int ARCHIVE_FORMAT_CAB ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED ; 
 int MSZIP ; 
 int STORE ; 
 scalar_t__ FUNC0 (struct archive_entry*) ; 
 int FUNC1 (struct archive_entry*) ; 
 scalar_t__ FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 scalar_t__ FUNC4 (struct archive_entry*) ; 
 scalar_t__ FUNC5 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*) ; 
 scalar_t__ FUNC7 (struct archive*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*) ; 
 scalar_t__ FUNC10 (struct archive*) ; 
 scalar_t__ FUNC11 (struct archive*,char*,int) ; 
 scalar_t__ FUNC12 (struct archive*) ; 
 int FUNC13 (struct archive*) ; 
 struct archive* FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC16 (struct archive*,char const*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct archive*) ; 
 int /*<<< orphan*/  FUNC18 (struct archive*) ; 
 int /*<<< orphan*/ * FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC24 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (char const*) ; 
 char* file1 ; 
 int file1_size ; 
 char* file2 ; 
 int file2_size ; 
 int /*<<< orphan*/  FUNC26 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC27 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC28(const char *refname, enum comp_type comp)
{
	struct archive_entry *ae;
	struct archive *a;
	char buff[128];
	char zero[128];
	size_t s;

	FUNC26(zero, 0, sizeof(zero));
	FUNC25(refname);
	FUNC20((a = FUNC14()) != NULL);
	FUNC22(a, ARCHIVE_OK, FUNC17(a));
	FUNC22(a, ARCHIVE_OK, FUNC18(a));
	FUNC22(a, ARCHIVE_OK,
	    FUNC16(a, refname, 10240));

	/* Verify regular empty. */
	FUNC22(a, ARCHIVE_OK, FUNC15(a, &ae));
	FUNC21((AE_IFREG | 0666), FUNC2(ae));
	FUNC24("empty", FUNC3(ae));
	FUNC21(0, FUNC5(ae));
	FUNC21(0, FUNC0(ae));
	FUNC21(0, FUNC4(ae));
	FUNC21(FUNC1(ae), 0);
	FUNC22(a, FUNC13(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	if (comp != STORE) {
		/* Verify regular zero.
		 * Maximum CFDATA size is 32768, so we need over 32768 bytes
		 * file to check if we properly handle multiple CFDATA.
		 */
		FUNC22(a, ARCHIVE_OK, FUNC15(a, &ae));
		FUNC21((AE_IFREG | 0666), FUNC2(ae));
		FUNC24("zero", FUNC3(ae));
		FUNC21(0, FUNC5(ae));
		FUNC21(0, FUNC0(ae));
		FUNC21(FUNC1(ae), 0);
		FUNC22(a, FUNC13(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);
		FUNC21(33000, FUNC4(ae));
		for (s = 0; s + sizeof(buff) < 33000; s+= sizeof(buff)) {
			ssize_t rsize = FUNC11(a, buff, sizeof(buff));
			if (comp == MSZIP && rsize == ARCHIVE_FATAL && FUNC19() == NULL) {
				FUNC27("Skipping CAB format(MSZIP) check: %s",
				    FUNC6(a));
				goto finish;
			}
			FUNC21(sizeof(buff), rsize);
			FUNC23(buff, zero, sizeof(buff));
		}
		FUNC21(33000 - s, FUNC11(a, buff, 33000 - s));
		FUNC23(buff, zero, 33000 - s);
	}

	/* Verify regular file1. */
	FUNC22(a, ARCHIVE_OK, FUNC15(a, &ae));
	FUNC21((AE_IFREG | 0666), FUNC2(ae));
	FUNC24("dir1/file1", FUNC3(ae));
	FUNC21(0, FUNC5(ae));
	FUNC21(0, FUNC0(ae));
	FUNC21(FUNC1(ae), 0);
	FUNC22(a, FUNC13(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);
	FUNC21(file1_size, FUNC4(ae));
	FUNC21(file1_size, FUNC11(a, buff, file1_size));
	FUNC23(buff, file1, file1_size);

	/* Verify regular file2. */
	FUNC22(a, ARCHIVE_OK, FUNC15(a, &ae));
	FUNC21((AE_IFREG | 0666), FUNC2(ae));
	FUNC24("dir2/file2", FUNC3(ae));
	FUNC21(0, FUNC5(ae));
	FUNC21(0, FUNC0(ae));
	FUNC21(FUNC1(ae), 0);
	FUNC22(a, FUNC13(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);
	FUNC21(file2_size, FUNC4(ae));
	FUNC21(file2_size, FUNC11(a, buff, file2_size));
	FUNC23(buff, file2, file2_size);

	/* End of archive. */
	FUNC22(a, ARCHIVE_EOF, FUNC15(a, &ae));

	if (comp != STORE) {
		FUNC21(4, FUNC7(a));
	} else {
		FUNC21(3, FUNC7(a));
	}

	/* Verify archive format. */
	FUNC22(a, ARCHIVE_FILTER_NONE, FUNC8(a, 0));
	FUNC22(a, ARCHIVE_FORMAT_CAB, FUNC9(a));

	/* Close the archive. */
finish:
	FUNC21(ARCHIVE_OK, FUNC10(a));
	FUNC21(ARCHIVE_OK, FUNC12(a));
}