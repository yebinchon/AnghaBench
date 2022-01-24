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
 int AE_IFDIR ; 
 int AE_IFREG ; 
 int /*<<< orphan*/  ARCHIVE_EOF ; 
 int /*<<< orphan*/  ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct archive *a, int streaming) {
	struct archive_entry *ae;

	FUNC4(a, ARCHIVE_OK, FUNC2(a, &ae));
	FUNC5("abc", FUNC1(ae));
	FUNC3(AE_IFREG | 0664, FUNC0(ae));

	FUNC4(a, ARCHIVE_OK, FUNC2(a, &ae));
	if (streaming) {
		/* Streaming reader has no basis for making this a dir */
		FUNC5("def", FUNC1(ae));
		FUNC3(AE_IFREG | 0664, FUNC0(ae));
	} else {
		/* Since 'def' is a dir, '/' should be added */
		FUNC5("def/", FUNC1(ae));
		FUNC3(AE_IFDIR | 0775, FUNC0(ae));
	}

	FUNC4(a, ARCHIVE_OK, FUNC2(a, &ae));
	FUNC5("def/foo", FUNC1(ae));
	FUNC3(AE_IFREG | 0664, FUNC0(ae));

	/* Streaming reader can tell this is a dir because it ends in '/' */
	FUNC4(a, ARCHIVE_OK, FUNC2(a, &ae));
	FUNC5("ghi/", FUNC1(ae));
	FUNC3(AE_IFDIR | 0775, FUNC0(ae));

	/* Streaming reader can tell this is a dir because it has xl
	 * extension */
	FUNC4(a, ARCHIVE_OK, FUNC2(a, &ae));
	/* '/' gets added because this is a dir */
	FUNC5("jkl/", FUNC1(ae));
	FUNC3(AE_IFDIR | 0775, FUNC0(ae));

	/* Streaming reader can tell this is a dir because it ends in
	 * '/' and has xl extension */
	FUNC4(a, ARCHIVE_OK, FUNC2(a, &ae));
	FUNC5("mno/", FUNC1(ae));
	FUNC3(AE_IFDIR | 0775, FUNC0(ae));

	FUNC4(a, ARCHIVE_EOF, FUNC2(a, &ae));
}