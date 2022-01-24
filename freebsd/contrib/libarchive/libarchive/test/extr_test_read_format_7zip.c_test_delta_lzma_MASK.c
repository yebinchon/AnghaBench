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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 int AE_IFREG ; 
 int ARCHIVE_EOF ; 
 int ARCHIVE_FILTER_NONE ; 
 int ARCHIVE_FORMAT_7ZIP ; 
 int ARCHIVE_OK ; 
 int FUNC0 (struct archive_entry*) ; 
 size_t FUNC1 (struct archive_entry*) ; 
 size_t FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 size_t FUNC4 (struct archive_entry*) ; 
 size_t FUNC5 (struct archive*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*) ; 
 size_t FUNC8 (struct archive*) ; 
 scalar_t__ FUNC9 (struct archive*,char*,int) ; 
 size_t FUNC10 (struct archive*) ; 
 int FUNC11 (struct archive*) ; 
 struct archive* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC14 (struct archive*,char const*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct archive*) ; 
 int /*<<< orphan*/  FUNC16 (struct archive*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int,size_t) ; 
 int /*<<< orphan*/  FUNC19 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char const*) ; 

__attribute__((used)) static void
FUNC22(const char *refname)
{
	struct archive_entry *ae;
	struct archive *a;
	size_t remaining;
	ssize_t bytes;
	char buff[1024];

	FUNC21(refname);
	FUNC17((a = FUNC12()) != NULL);
	FUNC19(a, ARCHIVE_OK, FUNC15(a));
	FUNC19(a, ARCHIVE_OK, FUNC16(a));
	FUNC19(a, ARCHIVE_OK,
	    FUNC14(a, refname, 10240));

	/* Verify regular file1. */
	FUNC19(a, ARCHIVE_OK, FUNC13(a, &ae));
	FUNC18((AE_IFREG | 0644), FUNC1(ae));
	FUNC20("file1", FUNC3(ae));
	FUNC18(172802, FUNC2(ae));
	FUNC18(27627, FUNC4(ae));
	FUNC18(FUNC0(ae), 0);
	FUNC19(a, FUNC11(a), 0);
	remaining = (size_t)FUNC4(ae);
	while (remaining) {
		if (remaining < sizeof(buff))
			FUNC18(remaining,
			    bytes = FUNC9(a, buff, sizeof(buff)));
		else
			FUNC18(sizeof(buff),
			    bytes = FUNC9(a, buff, sizeof(buff)));
		if (bytes > 0)
			remaining -= bytes;
		else
			break;
	}
	FUNC18(0, remaining);

	FUNC18(1, FUNC5(a));

	/* End of archive. */
	FUNC19(a, ARCHIVE_EOF, FUNC13(a, &ae));

	/* Verify archive format. */
	FUNC19(a, ARCHIVE_FILTER_NONE, FUNC6(a, 0));
	FUNC19(a, ARCHIVE_FORMAT_7ZIP, FUNC7(a));

	/* Close the archive. */
	FUNC18(ARCHIVE_OK, FUNC8(a));
	FUNC18(ARCHIVE_OK, FUNC10(a));
}