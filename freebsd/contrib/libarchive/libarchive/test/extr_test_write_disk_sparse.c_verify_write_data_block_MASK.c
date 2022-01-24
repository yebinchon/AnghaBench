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
struct stat {size_t st_size; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int AE_IFREG ; 
 size_t ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 struct archive_entry* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*,int) ; 
 char FUNC6 (struct archive*,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (size_t,char) ; 
 int /*<<< orphan*/  FUNC11 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 char FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,char*) ; 
 char FUNC16 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 char* FUNC18 (size_t) ; 
 int /*<<< orphan*/  FUNC19 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,struct stat*) ; 

__attribute__((used)) static void
FUNC22(struct archive *a, int sparse)
{
	static const char data[]="abcdefghijklmnopqrstuvwxyz";
	struct stat st;
	struct archive_entry *ae;
	size_t buff_size = 64 * 1024;
	char *buff, *p;
	const char *msg = sparse ? "sparse" : "non-sparse";
	FILE *f;

	buff = FUNC18(buff_size);
	FUNC9(buff != NULL);
	if (buff == NULL)
		return;

	ae = FUNC1();
	FUNC9(ae != NULL);
	FUNC5(ae, 8 * buff_size);
	FUNC4(ae, "test_write_data_block");
	FUNC3(ae, AE_IFREG | 0755);
	FUNC11(a, 0, FUNC8(a, ae));

	/* Use archive_write_data_block() to write three
	   relatively sparse blocks. */

	/* First has non-null data at beginning. */
	FUNC20(buff, 0, buff_size);
	FUNC19(buff, data, sizeof(data));
	FUNC13("%s", msg);
	FUNC10(ARCHIVE_OK,
	    FUNC6(a, buff, buff_size, 100));

	/* Second has non-null data in the middle. */
	FUNC20(buff, 0, buff_size);
	FUNC19(buff + buff_size / 2 - 3, data, sizeof(data));
	FUNC13("%s", msg);
	FUNC10(ARCHIVE_OK,
	    FUNC6(a, buff, buff_size, buff_size + 200));

	/* Third has non-null data at the end. */
	FUNC20(buff, 0, buff_size);
	FUNC19(buff + buff_size - sizeof(data), data, sizeof(data));
	FUNC13("%s", msg);
	FUNC10(ARCHIVE_OK,
	    FUNC6(a, buff, buff_size, buff_size * 2 + 300));

	FUNC13("%s", msg);
	FUNC11(a, 0, FUNC7(a));

	/* Test the entry on disk. */
	FUNC9(0 == FUNC21(FUNC2(ae), &st));
        FUNC10(st.st_size, 8 * buff_size);
	f = FUNC15(FUNC2(ae), "rb");
	FUNC9(f != NULL);
	if (f == NULL) {
		FUNC17(buff);
		return;
	}

	/* Check 100-byte gap at beginning */
	FUNC10(100, FUNC16(buff, 1, 100, f));
	FUNC13("%s", msg);
	for (p = buff; p < buff + 100; ++p) {
		FUNC13("offset: %d, %s", (int)(p - buff), msg);
		if (!FUNC10(0, *p))
			break;
	}

	/* Check first block. */
	FUNC10(buff_size, FUNC16(buff, 1, buff_size, f));
	FUNC13("%s", msg);
	FUNC12(buff, data, sizeof(data));
	for (p = buff + sizeof(data); p < buff + buff_size; ++p) {
		FUNC13("offset: %d, %s", (int)(p - buff), msg);
		if (!FUNC10(0, *p))
			break;
	}

	/* Check 100-byte gap */
	FUNC10(100, FUNC16(buff, 1, 100, f));
	FUNC13("%s", msg);
	for (p = buff; p < buff + 100; ++p) {
		FUNC13("offset: %d, %s", (int)(p - buff), msg);
		if (!FUNC10(0, *p))
			break;
	}

	/* Check second block. */
	FUNC10(buff_size, FUNC16(buff, 1, buff_size, f));
	for (p = buff; p < buff + buff_size; ++p) {
		FUNC13("offset: %d, %s", (int)(p - buff), msg);
		if (p == buff + buff_size / 2 - 3) {
			FUNC12(p, data, sizeof(data));
			p += sizeof(data);
		} else if (!FUNC10(0, *p))
			break;
	}

	/* Check 100-byte gap */
	FUNC10(100, FUNC16(buff, 1, 100, f));
	FUNC13("%s", msg);
	for (p = buff; p < buff + 100; ++p) {
		FUNC13("offset: %d, %s", (int)(p - buff), msg);
		if (!FUNC10(0, *p))
			break;
	}

	/* Check third block. */
	FUNC10(buff_size, FUNC16(buff, 1, buff_size, f));
	for (p = buff; p < buff + buff_size - sizeof(data); ++p) {
		FUNC13("offset: %d, %s", (int)(p - buff), msg);
		if (!FUNC10(0, *p))
			break;
	}
	FUNC13("%s", msg);
	FUNC12(buff + buff_size - sizeof(data), data, sizeof(data));

	/* Check another block size beyond last we wrote. */
	FUNC10(buff_size, FUNC16(buff, 1, buff_size, f));
	FUNC13("%s", msg);
	for (p = buff; p < buff + buff_size; ++p) {
		FUNC13("offset: %d, %s", (int)(p - buff), msg);
		if (!FUNC10(0, *p))
			break;
	}


	/* XXX more XXX */

	FUNC10(0, FUNC14(f));
	FUNC17(buff);
	FUNC0(ae);
}