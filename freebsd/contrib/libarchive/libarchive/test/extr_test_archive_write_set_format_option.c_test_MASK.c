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
 int ARCHIVE_FAILED ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive*) ; 
 struct archive* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct archive*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*,int,char*,char*,char*) ; 

__attribute__((used)) static void
FUNC4(int pristine)
{
	struct archive* a = FUNC1();
	int known_option_rv = pristine ? ARCHIVE_FAILED : ARCHIVE_OK;

	if (!pristine)
		FUNC2(a);

	/* NULL and "" denote `no option', so they're ok no matter
	 * what, if any, formats are registered */
	FUNC3(a, ARCHIVE_OK, NULL, NULL, NULL);
	FUNC3(a, ARCHIVE_OK, "", "", "");

	/* unknown modules and options */
	FUNC3(a, ARCHIVE_FAILED, "fubar", "snafu", NULL);
	FUNC3(a, ARCHIVE_FAILED, "fubar", "snafu", "betcha");

	/* unknown modules and options */
	FUNC3(a, ARCHIVE_FAILED, NULL, "snafu", NULL);
	FUNC3(a, ARCHIVE_FAILED, NULL, "snafu", "betcha");

	/* ARCHIVE_OK with iso9660 loaded, ARCHIVE_WARN otherwise */
	FUNC3(a, known_option_rv, "iso9660", "joliet", NULL);
	FUNC3(a, known_option_rv, "iso9660", "joliet", NULL);
	FUNC3(a, known_option_rv, NULL, "joliet", NULL);
	FUNC3(a, known_option_rv, NULL, "joliet", NULL);

	FUNC0(a);
}