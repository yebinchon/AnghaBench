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
 int AE_IFREG ; 
 int ARCHIVE_EOF ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(struct archive *a, int size_known)
{
	struct archive_entry *ae;

	FUNC10(a, ARCHIVE_OK, FUNC7(a, &ae));
	FUNC12("-", FUNC1(ae));
	FUNC9(AE_IFREG | 0664, FUNC0(ae));
	if (size_known) {
		// zip64b has the uncompressed size at the beginning,
		// plus CRC and compressed size using length-at-end.
		FUNC8(FUNC3(ae));
		FUNC9(6, FUNC2(ae));
	} else {
		// zip64a does not have a size at the beginning at all.
		FUNC8(!FUNC3(ae));
	}
#ifdef HAVE_ZLIB_H
	{
		char data[16];
		assertEqualIntA(a, 6, archive_read_data(a, data, 16));
		assertEqualMem(data, "file0\x0a", 6);
	}
#endif
	FUNC10(a, ARCHIVE_EOF, FUNC7(a, &ae));
	FUNC10(a, ARCHIVE_OK, FUNC4(a));
	FUNC10(a, ARCHIVE_OK, FUNC6(a));
}