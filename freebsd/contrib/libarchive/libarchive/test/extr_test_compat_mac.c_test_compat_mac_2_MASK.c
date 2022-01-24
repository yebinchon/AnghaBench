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
 int ARCHIVE_EOF ; 
 size_t ARCHIVE_FILTER_COMPRESS ; 
 size_t ARCHIVE_FORMAT_TAR_USTAR ; 
 int ARCHIVE_OK ; 
 size_t FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 void* FUNC2 (struct archive_entry*,size_t*) ; 
 size_t FUNC3 (struct archive_entry*) ; 
 size_t FUNC4 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*) ; 
 size_t FUNC6 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*) ; 
 int FUNC8 (struct archive*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct archive*) ; 
 size_t FUNC10 (struct archive*) ; 
 size_t FUNC11 (struct archive*) ; 
 struct archive* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC14 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct archive*,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct archive*) ; 
 int /*<<< orphan*/  FUNC17 (struct archive*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int,size_t) ; 
 int /*<<< orphan*/  FUNC20 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*,void const*,int) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 

__attribute__((used)) static void
FUNC24(void)
{
	char name[] = "test_compat_mac-2.tar.Z";
	struct archive_entry *ae;
	struct archive *a;
	const void *attr;
	size_t attrSize;

	FUNC18((a = FUNC12()) != NULL);
	FUNC20(a, ARCHIVE_OK, FUNC16(a));
	FUNC20(a, ARCHIVE_OK, FUNC17(a));
	FUNC20(a, ARCHIVE_OK, FUNC15(a, "mac-ext"));
	FUNC23(name);
	FUNC20(a, ARCHIVE_OK, FUNC14(a, name, 10240));

	FUNC20(a, ARCHIVE_OK, FUNC13(a, &ae));
	FUNC22("./", FUNC5(ae));
	FUNC19(1303628303, FUNC4(ae));
	FUNC19(501, FUNC6(ae));
	FUNC22("tim", FUNC7(ae));
	FUNC19(20, FUNC0(ae));
	FUNC22("staff", FUNC1(ae));
	FUNC19(040755, FUNC3(ae));

	attr = FUNC2(ae, &attrSize);
	FUNC18(attr == NULL);
	FUNC19(0, attrSize);

	FUNC20(a, ARCHIVE_OK, FUNC13(a, &ae));
	FUNC22("./mydir/", FUNC5(ae));
	FUNC19(1303628303, FUNC4(ae));
	FUNC19(501, FUNC6(ae));
	FUNC22("tim", FUNC7(ae));
	FUNC19(20, FUNC0(ae));
	FUNC22("staff", FUNC1(ae));
	FUNC19(040755, FUNC3(ae));

	attr = FUNC2(ae, &attrSize);
	FUNC18(attr != NULL);
	FUNC19(267, attrSize);
	FUNC21("\x00\x05\x16\x07\x00\x02\x00\x00Mac OS X", attr, 16);

	FUNC20(a, ARCHIVE_OK, FUNC13(a, &ae));
	FUNC22("./myfile", FUNC5(ae));
	FUNC19(1303628303, FUNC4(ae));
	FUNC19(501, FUNC6(ae));
	FUNC22("tim", FUNC7(ae));
	FUNC19(20, FUNC0(ae));
	FUNC22("staff", FUNC1(ae));
	FUNC19(0100644, FUNC3(ae));

	attr = FUNC2(ae, &attrSize);
	FUNC18(attr != NULL);
	FUNC19(267, attrSize);
	FUNC21("\x00\x05\x16\x07\x00\x02\x00\x00Mac OS X", attr, 16);

	/* Verify the end-of-archive. */
	FUNC20(a, ARCHIVE_EOF, FUNC13(a, &ae));

	/* Verify that the format detection worked. */
	FUNC19(FUNC8(a, 0), ARCHIVE_FILTER_COMPRESS);
	FUNC19(FUNC9(a), ARCHIVE_FORMAT_TAR_USTAR);

	FUNC19(ARCHIVE_OK, FUNC10(a));
	FUNC19(ARCHIVE_OK, FUNC11(a));
}