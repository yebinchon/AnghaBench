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
struct stat {int st_mode; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 scalar_t__ AE_IFDIR ; 
 int MODE_MASK ; 
 int S_ISGID ; 
 int UMASK ; 
 scalar_t__ FUNC0 (struct archive_entry*) ; 
 int FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 struct archive* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct archive*) ; 
 int FUNC5 (struct archive*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,struct stat*) ; 

__attribute__((used)) static void FUNC12(struct archive_entry *ae, const char *msg)
{
	struct archive *ad;
	struct stat st;

	/* Write the entry to disk. */
	FUNC7((ad = FUNC3()) != NULL);
	FUNC10("%s", msg);
	FUNC9(ad, 0, FUNC6(ad, ae));
	FUNC9(ad, 0, FUNC4(ad));
	FUNC8(0, FUNC5(ad));

	/* Test the entries on disk. */
	FUNC7(0 == FUNC11(FUNC2(ae), &st));
	FUNC10("%s", msg);

#if !defined(_WIN32) || defined(__CYGWIN__)
	/* When verifying a dir, ignore the S_ISGID bit, as some systems set
	 * that automatically. */
	if (FUNC0(ae) == AE_IFDIR)
		st.st_mode &= ~S_ISGID;
	FUNC8(st.st_mode & MODE_MASK,
	    FUNC1(ae) & ~UMASK & MODE_MASK);
#endif
}