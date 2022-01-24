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
struct stat {int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_mode; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_OK ; 
 int UMASK ; 
 int FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int FUNC2 (struct archive*,char const*,int,int /*<<< orphan*/ ) ; 
 struct archive* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct archive*) ; 
 int FUNC5 (struct archive*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char const*,...) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,struct stat*) ; 

__attribute__((used)) static void FUNC12(struct archive_entry *ae, const char *msg)
{
	static const char data[]="abcdefghijklmnopqrstuvwxyz";
	struct archive *ad;
	struct stat st;

	/* Write the entry to disk. */
	FUNC7((ad = FUNC3()) != NULL);
	/* Leave the size unset.  The data should not be truncated. */
	FUNC9(ad, 0, FUNC6(ad, ae));
	FUNC8(ARCHIVE_OK,
	    FUNC2(ad, data, sizeof(data), 0));
	FUNC9(ad, 0, FUNC4(ad));
	FUNC8(0, FUNC5(ad));

	/* Test the entry on disk. */
	FUNC7(0 == FUNC11(FUNC1(ae), &st));
	FUNC10("st.st_mode=%o archive_entry_mode(ae)=%o",
	    st.st_mode, FUNC0(ae));
#if !defined(_WIN32) || defined(__CYGWIN__)
	FUNC8(st.st_mode, (FUNC0(ae) & ~UMASK));
#endif
	FUNC10(msg);
	FUNC8(st.st_size, sizeof(data));
}