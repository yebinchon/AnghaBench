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
 int /*<<< orphan*/  ARCHIVE_FAILED ; 
 int /*<<< orphan*/  ARCHIVE_OK ; 
 int FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 char* FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 int FUNC4 (struct archive_entry*) ; 
 scalar_t__ FUNC5 (struct archive*) ; 
 char* FUNC6 (struct archive*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*,struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*) ; 
 int /*<<< orphan*/  FUNC11 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,char*) ; 

__attribute__((used)) static void
FUNC18(struct archive *a, int seek_checks)
{
	struct archive_entry *ae;

	FUNC15(a, ARCHIVE_OK, FUNC11(a, &ae));

	FUNC14(FUNC0(ae), 0);
	FUNC15(a, FUNC10(a), 0);
	FUNC16("hello.txt", FUNC2(ae));
	if (seek_checks) {
		FUNC14(AE_IFREG | 0644, FUNC1(ae));
		FUNC13(FUNC4(ae));
		FUNC14(6, FUNC3(ae));
	} else {
		FUNC13(!FUNC4(ae));
		FUNC14(0, FUNC3(ae));
	}

	if (FUNC12() != NULL) {
		FUNC15(a, ARCHIVE_OK, FUNC8(a, ae, 0));
		FUNC17("hello\x0A", 6, "hello.txt");
	} else {
		FUNC15(a, ARCHIVE_FAILED, FUNC8(a, ae, 0));
		FUNC16(FUNC6(a),
		    "Unsupported ZIP compression method (8: deflation)");
		FUNC13(FUNC5(a) != 0);
	}

	FUNC15(a, ARCHIVE_OK, FUNC7(a));
	FUNC15(a, ARCHIVE_OK, FUNC9(a));
}