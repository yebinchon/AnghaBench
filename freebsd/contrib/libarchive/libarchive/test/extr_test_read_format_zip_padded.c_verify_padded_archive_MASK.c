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
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*) ; 
 struct archive* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (struct archive*,char*,size_t,int) ; 
 char* FUNC15 (size_t*,char const*) ; 

__attribute__((used)) static void
FUNC16(const char *refname)
{
	char *p;
	size_t s;
	struct archive *a;
	struct archive_entry *ae;

	FUNC12(refname);
	p = FUNC15(&s, refname);

	FUNC8((a = FUNC5()) != NULL);
	FUNC10(a, ARCHIVE_OK, FUNC7(a));
	FUNC10(a, ARCHIVE_OK, FUNC14(a, p, s, 1));

	FUNC10(a, ARCHIVE_OK, FUNC6(a, &ae));
	FUNC11("file0", FUNC1(ae));
	FUNC9(AE_IFREG | 0644, FUNC0(ae));
	FUNC9(6, FUNC2(ae));

	FUNC10(a, ARCHIVE_OK, FUNC6(a, &ae));
	FUNC11("file1", FUNC1(ae));
	FUNC9(AE_IFREG | 0644, FUNC0(ae));
	FUNC9(6, FUNC2(ae));

	FUNC10(a, ARCHIVE_EOF, FUNC6(a, &ae));
	FUNC10(a, ARCHIVE_OK, FUNC3(a));
	FUNC10(a, ARCHIVE_OK, FUNC4(a));

	FUNC13(p);
}