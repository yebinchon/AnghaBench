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
 int /*<<< orphan*/  ARCHIVE_EOF ; 
 int /*<<< orphan*/  ARCHIVE_OK ; 
 int FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*) ; 
 struct archive* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char const*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (struct archive*,char*,size_t,int) ; 
 char* FUNC17 (size_t*,char const*) ; 

__attribute__((used)) static void
FUNC18(const char *refname)
{
	char *p;
	size_t s;
	struct archive *a;
	struct archive_entry *ae;

	FUNC14(refname);
	p = FUNC17(&s, refname);

	/* Symlinks can only be extracted with the seeking reader. */
	FUNC10((a = FUNC7()) != NULL);
	FUNC12(a, ARCHIVE_OK, FUNC9(a));
	FUNC12(a, ARCHIVE_OK, FUNC16(a, p, s, 1));

	FUNC12(a, ARCHIVE_OK, FUNC8(a, &ae));
	FUNC13("file0", FUNC2(ae));
	FUNC11(AE_IFREG | 0644, FUNC1(ae));
	FUNC11(FUNC0(ae), 0);
	FUNC12(a, FUNC6(a), 0);

	FUNC12(a, ARCHIVE_OK, FUNC8(a, &ae));
	FUNC13("build.sh", FUNC2(ae));
	FUNC11(AE_IFREG | 0755, FUNC1(ae));
	FUNC11(23, FUNC3(ae));
	FUNC11(FUNC0(ae), 0);
	FUNC12(a, FUNC6(a), 0);

	FUNC12(a, ARCHIVE_EOF, FUNC8(a, &ae));
	FUNC12(a, FUNC6(a), 0);
	FUNC11(FUNC0(ae), 0);
	FUNC12(a, ARCHIVE_OK, FUNC4(a));
	FUNC12(a, ARCHIVE_OK, FUNC5(a));

	FUNC15(p);
}