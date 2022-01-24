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
struct fileblocks {int dummy; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_EOF ; 
 int /*<<< orphan*/  ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*,struct fileblocks*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  memory_read ; 
 int /*<<< orphan*/  memory_read_open ; 
 int /*<<< orphan*/  memory_read_seek ; 
 int /*<<< orphan*/  memory_read_skip ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 scalar_t__* test_sizes ; 

__attribute__((used)) static void
FUNC15(struct archive *a, struct fileblocks *fileblocks)
{
	char namebuff[64];
	struct archive_entry *ae;
	int i;

	FUNC12(a, ARCHIVE_OK,
	    FUNC7(a, "zip:ignorecrc32"));
	FUNC12(a, ARCHIVE_OK,
	    FUNC6(a, memory_read_open));
	FUNC12(a, ARCHIVE_OK,
	    FUNC8(a, memory_read));
	FUNC12(a, ARCHIVE_OK,
	    FUNC10(a, memory_read_skip));
	FUNC12(a, ARCHIVE_OK,
	    FUNC9(a, memory_read_seek));
	FUNC12(a, ARCHIVE_OK,
	    FUNC5(a, fileblocks));
	FUNC12(a, ARCHIVE_OK, FUNC4(a));

	/*
	 * Read entries back.
	 */
	for (i = 0; test_sizes[i] > 0; i++) {
		FUNC12(a, ARCHIVE_OK,
		    FUNC3(a, &ae));
		FUNC14(namebuff, "file_%d", i);
		FUNC13(namebuff, FUNC0(ae));
		FUNC11(test_sizes[i], FUNC1(ae));
	}
	FUNC12(a, 0, FUNC3(a, &ae));
	FUNC13("lastfile", FUNC0(ae));

	FUNC12(a, ARCHIVE_EOF, FUNC3(a, &ae));

	/* Close out the archive. */
	FUNC12(a, ARCHIVE_OK, FUNC2(a));
}