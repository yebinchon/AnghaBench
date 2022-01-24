#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  line ;
struct TYPE_2__ {int streams; int blocks; int files; int /*<<< orphan*/  uncompressed_size; int /*<<< orphan*/  compressed_size; int /*<<< orphan*/  checks; } ;

/* Variables and functions */
 int CHECKS_STR_SIZE ; 
 int /*<<< orphan*/  NICESTR_B ; 
 int /*<<< orphan*/  NICESTR_TIB ; 
 int ULONG_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char,int) ; 
 char* FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_1__ totals ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 char* FUNC7 (int,int) ; 

__attribute__((used)) static void
FUNC8(void)
{
	// Print a separator line.
	char line[80];
	FUNC2(line, '-', sizeof(line));
	line[sizeof(line) - 1] = '\0';
	FUNC5(line);

	// Get the check names.
	char checks[CHECKS_STR_SIZE];
	FUNC0(checks, totals.checks, false);

	// Print the totals except the file count, which needs
	// special handling.
	FUNC4("%5s %7s  %11s  %11s  %5s  %-7s ",
			FUNC7(totals.streams, 0),
			FUNC7(totals.blocks, 1),
			FUNC6(totals.compressed_size,
				NICESTR_B, NICESTR_TIB, false, 2),
			FUNC6(totals.uncompressed_size,
				NICESTR_B, NICESTR_TIB, false, 3),
			FUNC1(totals.compressed_size,
				totals.uncompressed_size),
			checks);

	// Since we print totals only when there are at least two files,
	// the English message will always use "%s files". But some other
	// languages need different forms for different plurals so we
	// have to translate this with ngettext().
	//
	// TRANSLATORS: %s is an integer. Only the plural form of this
	// message is used (e.g. "2 files"). Test with "xz -l foo.xz bar.xz".
	FUNC4(FUNC3("%s file\n", "%s files\n",
			totals.files <= ULONG_MAX ? totals.files
				: (totals.files % 1000000) + 1000000),
			FUNC7(totals.files, 0));

	return;
}