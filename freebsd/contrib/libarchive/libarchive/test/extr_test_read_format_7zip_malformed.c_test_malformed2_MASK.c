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
 int /*<<< orphan*/  ARCHIVE_FATAL ; 
 int /*<<< orphan*/  ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive*) ; 
 struct archive* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

__attribute__((used)) static void
FUNC9(void)
{
	const char *refname = "test_read_format_7zip_malformed2.7z";
	struct archive *a;
	struct archive_entry *ae;

	FUNC8(refname);

	FUNC6((a = FUNC1()) != NULL);
	FUNC7(a, ARCHIVE_OK, FUNC4(a));
	FUNC7(a, ARCHIVE_OK, FUNC5(a));
	FUNC7(a, ARCHIVE_OK, FUNC3(a, refname, 10240));
	FUNC7(a, ARCHIVE_FATAL, FUNC2(a, &ae));
	FUNC7(a, ARCHIVE_OK, FUNC0(a));
}