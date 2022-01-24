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
 int /*<<< orphan*/  ARCHIVE_OK ; 
 char* FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 

__attribute__((used)) static void
FUNC5(struct archive *a) {
	struct archive_entry *ae;
	const char *p;

	FUNC3(a, ARCHIVE_OK, FUNC1(a, &ae));
	FUNC2((p = FUNC0(ae)) != NULL);
	FUNC4(p, "File 1.txt");

	FUNC3(a, ARCHIVE_OK, FUNC1(a, &ae));
	FUNC2((p = FUNC0(ae)) != NULL);
#if defined(__APPLE__)
	/* Compare NFD string. */
	assertEqualUTF8String(p, "File 2 - o\xCC\x88.txt");
#else
	/* Compare NFC string. */
	FUNC4(p, "File 2 - \xC3\xB6.txt");
#endif

	FUNC3(a, ARCHIVE_OK, FUNC1(a, &ae));
	FUNC2((p = FUNC0(ae)) != NULL);
#if defined(__APPLE__)
	/* Compare NFD string. */
	assertEqualUTF8String(p, "File 3 - a\xCC\x88.txt");
#else
	/* Compare NFC string. */
	FUNC4(p, "File 3 - \xC3\xA4.txt");
#endif

	/* The CRC of the filename fails, so fall back to CDE. */
	FUNC3(a, ARCHIVE_OK, FUNC1(a, &ae));
	FUNC2((p = FUNC0(ae)) != NULL);
	FUNC4(p, "File 4 - xx.txt");

	FUNC3(a, ARCHIVE_EOF, FUNC1(a, &ae));
}