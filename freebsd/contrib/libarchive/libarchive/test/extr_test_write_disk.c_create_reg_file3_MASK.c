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
struct stat {int st_mode; int st_size; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int UMASK ; 
 int FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*,int) ; 
 int FUNC3 (struct archive*,char const*,int) ; 
 struct archive* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 
 int FUNC6 (struct archive*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,struct stat*) ; 

__attribute__((used)) static void FUNC13(struct archive_entry *ae, const char *msg)
{
	static const char data[]="abcdefghijklmnopqrstuvwxyz";
	struct archive *ad;
	struct stat st;

	/* Write the entry to disk. */
	FUNC8((ad = FUNC4()) != NULL);
	FUNC11("%s", msg);
	/* Set the size smaller than the data and verify the truncation. */
	FUNC2(ae, 5);
	FUNC10(ad, 0, FUNC7(ad, ae));
	FUNC9(5, FUNC3(ad, data, sizeof(data)));
	FUNC10(ad, 0, FUNC5(ad));
	FUNC9(0, FUNC6(ad));

	/* Test the entry on disk. */
	FUNC8(0 == FUNC12(FUNC1(ae), &st));
	FUNC11("st.st_mode=%o archive_entry_mode(ae)=%o",
	    st.st_mode, FUNC0(ae));
#if !defined(_WIN32) || defined(__CYGWIN__)
	FUNC9(st.st_mode, (FUNC0(ae) & ~UMASK));
#endif
	FUNC9(st.st_size, 5);
}