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
 int /*<<< orphan*/  FUNC3 (struct archive*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct archive *a)
{
	struct archive_entry *ae;

	FUNC8(a, ARCHIVE_OK, FUNC6(a, &ae));
	FUNC10("-", FUNC1(ae));
	FUNC7(AE_IFREG | 0660, FUNC0(ae));
	FUNC7(6, FUNC2(ae));
#ifdef HAVE_ZLIB_H
	{
		char data[16];
		assertEqualIntA(a, 6, archive_read_data(a, data, 16));
		assertEqualMem(data, "file0\x0a", 6);
	}
#endif
	FUNC8(a, ARCHIVE_EOF, FUNC6(a, &ae));
	FUNC8(a, ARCHIVE_OK, FUNC3(a));
	FUNC8(a, ARCHIVE_OK, FUNC5(a));
}