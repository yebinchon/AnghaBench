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
struct archive {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_OK ; 
 struct archive* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct archive*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*,char*,size_t,int) ; 
 char* FUNC9 (size_t*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*,int) ; 

__attribute__((used)) static void
FUNC11(void)
{
	const char *refname = "test_read_format_zip.zip";
	struct archive *a;
	char *p;
	size_t s;

	FUNC6(refname);

	/* Verify with seeking reader. */
	FUNC4((a = FUNC0()) != NULL);
	FUNC5(a, ARCHIVE_OK, FUNC2(a));
	FUNC5(a, ARCHIVE_OK, FUNC3(a));
	FUNC5(a, ARCHIVE_OK, FUNC1(a, refname, 10240));
	FUNC10(a, 1);

	/* Verify with streaming reader. */
	p = FUNC9(&s, refname);
	FUNC4((a = FUNC0()) != NULL);
	FUNC5(a, ARCHIVE_OK, FUNC2(a));
	FUNC5(a, ARCHIVE_OK, FUNC3(a));
	FUNC5(a, ARCHIVE_OK, FUNC8(a, p, s, 31));
	FUNC10(a, 0);
	FUNC7(p);
}