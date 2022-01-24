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
 int /*<<< orphan*/  ARCHIVE_EOF ; 
 int /*<<< orphan*/  ARCHIVE_FILTER_NONE ; 
 int /*<<< orphan*/  ARCHIVE_FORMAT_TAR ; 
 int /*<<< orphan*/  ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED ; 
 int /*<<< orphan*/  archiveEmpty ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*) ; 
 struct archive* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct archive*,struct archive_entry**) ; 
 scalar_t__ FUNC9 (struct archive*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (struct archive*) ; 
 scalar_t__ FUNC11 (struct archive*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

__attribute__((used)) static void FUNC18(void)
{
	struct archive_entry *ae;
	struct archive *a;

	FUNC12((a = FUNC7()) != NULL);
	FUNC13(0 == FUNC10(a));
	FUNC13(0 == FUNC11(a));
	FUNC13(0 == FUNC9(a, archiveEmpty, 512));
	FUNC15(a, ARCHIVE_EOF, FUNC8(a, &ae));
	FUNC14(FUNC1(a, 0), ARCHIVE_FILTER_NONE);
	FUNC16(FUNC2(a, 0), "none");
	FUNC17("512 zero bytes should be recognized as a tar archive.");
	FUNC14(FUNC3(a), ARCHIVE_FORMAT_TAR);
	FUNC14(FUNC0(ae), 0);
	FUNC15(a, FUNC6(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	FUNC15(a, ARCHIVE_OK, FUNC4(a));
	FUNC14(ARCHIVE_OK, FUNC5(a));
}