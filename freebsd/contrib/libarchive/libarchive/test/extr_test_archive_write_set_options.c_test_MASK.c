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
 int /*<<< orphan*/  FUNC1 (struct archive*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*) ; 
 struct archive* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct archive*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*,int,char*) ; 

__attribute__((used)) static void
FUNC7(int pristine)
{
	struct archive* a = FUNC3();
	int halfempty_options_rv = pristine ? ARCHIVE_FAILED : ARCHIVE_OK;
	int known_option_rv = pristine ? ARCHIVE_FAILED : ARCHIVE_OK;

	if (!pristine) {
		FUNC1(a);
		FUNC4(a);
	}

	/* NULL and "" denote `no option', so they're ok no matter
	 * what, if any, formats are registered */
	FUNC6(a, ARCHIVE_OK, NULL);
	FUNC6(a, ARCHIVE_OK, "");

	/* unknown modules and options */
	FUNC6(a, ARCHIVE_FAILED, "fubar:snafu");
	FUNC5("Unknown module name: `fubar'",
	    FUNC0(a));
	FUNC6(a, ARCHIVE_FAILED, "fubar:snafu=betcha");
	FUNC5("Unknown module name: `fubar'",
	    FUNC0(a));

	/* unknown modules and options */
	FUNC6(a, ARCHIVE_FAILED, "snafu");
	FUNC5("Undefined option: `snafu'",
	    FUNC0(a));
	FUNC6(a, ARCHIVE_FAILED, "snafu=betcha");
	FUNC5("Undefined option: `snafu'",
	    FUNC0(a));

	/* ARCHIVE_OK with iso9660 loaded, ARCHIVE_FAILED otherwise */
	FUNC6(a, known_option_rv, "iso9660:joliet");
	if (pristine) {
		FUNC5("Unknown module name: `iso9660'",
		    FUNC0(a));
	}
	FUNC6(a, known_option_rv, "iso9660:joliet");
	if (pristine) {
		FUNC5("Unknown module name: `iso9660'",
		    FUNC0(a));
	}
	FUNC6(a, known_option_rv, "joliet");
	if (pristine) {
		FUNC5("Undefined option: `joliet'",
		    FUNC0(a));
	}
	FUNC6(a, known_option_rv, "!joliet");
	if (pristine) {
		FUNC5("Undefined option: `joliet'",
		    FUNC0(a));
	}

	FUNC6(a, ARCHIVE_OK, ",");
	FUNC6(a, ARCHIVE_OK, ",,");

	FUNC6(a, halfempty_options_rv, ",joliet");
	if (pristine) {
		FUNC5("Undefined option: `joliet'",
		    FUNC0(a));
	}
	FUNC6(a, halfempty_options_rv, "joliet,");
	if (pristine) {
		FUNC5("Undefined option: `joliet'",
		    FUNC0(a));
	}

	FUNC6(a, ARCHIVE_FAILED, "joliet,snafu");
	if (pristine) {
		FUNC5("Undefined option: `joliet'",
		    FUNC0(a));
	} else {
		FUNC5("Undefined option: `snafu'",
		    FUNC0(a));
	}

	FUNC6(a, ARCHIVE_FAILED, "iso9660:snafu");
	if (pristine) {
		FUNC5("Unknown module name: `iso9660'",
		    FUNC0(a));
	} else {
		FUNC5("Undefined option: `iso9660:snafu'",
		    FUNC0(a));
	}

	FUNC2(a);
}